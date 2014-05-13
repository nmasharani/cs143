

#include <stdlib.h>
#include <stdio.h>
#include <stdarg.h>
#include "semant.h"
#include "utilities.h"


extern int semant_debug;
extern char *curr_filename;

//////////////////////////////////////////////////////////////////////
//
// Symbols
//
// For convenience, a large number of symbols are predefined here.
// These symbols include the primitive type and method names, as well
// as fixed names used by the runtime system.
//
//////////////////////////////////////////////////////////////////////
static Symbol 
    arg,
    arg2,
    Bool,
    concat,
    cool_abort,
    copy,
    Int,
    in_int,
    in_string,
    IO,
    length,
    Main,
    main_meth,
    No_class,
    No_type,
    Object,
    out_int,
    out_string,
    prim_slot,
    self,
    SELF_TYPE,
    Str,
    str_field,
    substr,
    type_name,
    val;
//
// Initializing the predefined symbols.
//
static void initialize_constants(void)
{
    arg         = idtable.add_string("arg");
    arg2        = idtable.add_string("arg2");
    Bool        = idtable.add_string("Bool");
    concat      = idtable.add_string("concat");
    cool_abort  = idtable.add_string("abort");
    copy        = idtable.add_string("copy");
    Int         = idtable.add_string("Int");
    in_int      = idtable.add_string("in_int");
    in_string   = idtable.add_string("in_string");
    IO          = idtable.add_string("IO");
    length      = idtable.add_string("length");
    Main        = idtable.add_string("Main");
    main_meth   = idtable.add_string("main");
    //   _no_class is a symbol that can't be the name of any 
    //   user-defined class.
    No_class    = idtable.add_string("_no_class");
    No_type     = idtable.add_string("_no_type");
    Object      = idtable.add_string("Object");
    out_int     = idtable.add_string("out_int");
    out_string  = idtable.add_string("out_string");
    prim_slot   = idtable.add_string("_prim_slot");
    self        = idtable.add_string("self");
    SELF_TYPE   = idtable.add_string("SELF_TYPE");
    Str         = idtable.add_string("String");
    str_field   = idtable.add_string("_str_field");
    substr      = idtable.add_string("substr");
    type_name   = idtable.add_string("type_name");
    val         = idtable.add_string("_val");
}

/** 
* ***************************************************
*  ClassTable Constructor Implimentation.
* ***************************************************
*/
ClassTable::ClassTable(Classes classes) : semant_errors(0) , error_stream(cerr) {

    /* Adds the basic classes to the user defined classes in the program */
    Classes classes_in_program = install_basic_classes(classes);

    /* Init the defined_types pointer. Note, no need to worry about memory management. */
    defined_types = collect_all_valid_types(classes);

    int status = check_for_valid_inheritance(classes, defined_types);
    if (status != 0) return;

    status = check_for_inheritance_cycle(classes_in_program);
    if (status != 0) return;

    //methods made public and moved to program::semant()
   /* status = validate_methods(classes_in_program);
    if (status != 0) return; 
    */

    /*status = check_for_main(classes_in_program);
    if (status != 0) return; */

    program_classes_AST = classes_in_program;

    setup_inheritance_graph(); 
}

/**
* *****************************************************
* - No method with same name in a class
* - Override methods must have matching parameter types
*   and matching return type. 
* - Types must all be defined types in the program. 
* 1st check that in each class, there are not multiple 
*       methods of the same name. 
* *****************************************************
*/
int ClassTable::validate_methods(Classes classes_in_program) {
    int status = check_for_multiple_methods(classes_in_program);
    //status += check_methods_types(classes_in_program); //done in type checking
    status += check_overriden_methods(classes_in_program);
    return status;
}

/**
* *****************************************************
* 
* *****************************************************
*/
int ClassTable::check_overriden_methods(Classes classes_in_program) {
    int status = 0;
    for (int i = classes_in_program->first(); classes_in_program->more(i); i = classes_in_program->next(i)) {
        Class_ curr_class = classes_in_program->nth(i);
        Features features = curr_class->get_features();
        for (int j = features->first(); features->more(j); j = features->next(j)) {
            Feature curr_feature = features->nth(j);
            if (strcmp(curr_feature->get_type_name(), "method") == 0) {
                char* curr_method_name = curr_feature->get_name()->get_string();
                Feature inherited_method_def = search_for_inherited_method_def(curr_class, curr_method_name, classes_in_program);
                if (inherited_method_def != NULL) {
                    status += check_method_definitions(curr_class, curr_feature, inherited_method_def);
                }
            }
        }
    }
    return status;
}

/**
* *****************************************************
* Checks that the types of the both features are the same
*       and that their types match. 
* Prints an appropriate error message if the types do 
*       match. 
* *****************************************************
*/
int ClassTable::check_method_definitions(Class_ containing_class, Feature curr_feature, Feature inherited_method_def) {
    int status = 0;
    Formals curr_formals = curr_feature->get_formals();
    Formals inherited_formals = inherited_method_def->get_formals();
    if (curr_formals->len() != inherited_formals->len()) {
        ostream& err_stream = semant_error(containing_class->get_filename_1(), curr_feature);
        err_stream << "Incompatible number of formal parameters in redefined method " << curr_feature->get_name()->get_string() << ".\n";
        status = 1;
    }
    if (status == 0) {
        for (int i = curr_formals->first(); curr_formals->more(i); i = curr_formals->next(i)) {
            Formal curr_formal = curr_formals->nth(i);
            Formal inherited_formal = inherited_formals->nth(i);
            if (strcmp(curr_formal->get_type()->get_string(), inherited_formal->get_type()->get_string()) != 0) {
                ostream& err_stream = semant_error(containing_class->get_filename_1(), curr_formal);
                err_stream << "In redefined method " << curr_feature->get_name()->get_string() << ", parameter '" << curr_formal->get_name()->get_string() <<"' of type " << curr_formal->get_type()->get_string() << " is different from original type " << inherited_formal->get_type()->get_string() << ".\n";
                status = 1;
            }
        }
    }
    if (strcmp(curr_feature->get_type()->get_string(), inherited_method_def->get_type()->get_string()) != 0) {
        ostream& err_stream = semant_error(containing_class->get_filename_1(), curr_feature);
        err_stream << "In redefined method " << curr_feature->get_name()->get_string() << " return type " << curr_feature->get_type()->get_string() << " is different from original return type " << inherited_method_def->get_type()->get_string() << ".\n";
        status = 1;
    }
    return status;
}

/**
* *****************************************************
* Checks the parents of curr_class for a method 
*       of the same name as curr_method_name. 
* Returns the Feature with a matching method_name, or NULL
*       otherwise. 
* ***************************************************** 
*/
Feature ClassTable::search_for_inherited_method_def(Class_ curr_class, char* curr_method_name, Classes classes_in_program) {
    
    char* curr_parent_name = curr_class->get_parent()->get_string();
    while (true) {
        if (strcmp(curr_parent_name, "_no_class") == 0) break;
        Class_ curr_parent = find_class_by_name(classes_in_program, curr_parent_name);
        Feature parent_feature = find_method_by_name(curr_parent, curr_method_name);
        if (parent_feature != NULL) return parent_feature;
        curr_parent_name = curr_parent->get_parent()->get_string();
    }
    return NULL;
}

/**
* *****************************************************
* Ensures that no class contains two or more methods 
* of the same name. 
* *****************************************************
*/
int ClassTable::check_for_multiple_methods(Classes classes_in_program) {
    int status = 0;
    for (int i = classes_in_program->first(); classes_in_program->more(i); i = classes_in_program->next(i)) {
        SymbolTable<char*, int> method_names;
        method_names.enterscope();
        Class_ curr_class = classes_in_program->nth(i);
        Features features = curr_class->get_features();
        for (int j = features->first(); features->more(j); j = features->next(j)) {
            Feature curr_feature = features->nth(j);
            if (strcmp(curr_feature->get_type_name(), "method") == 0) {
                char* curr_method_name = curr_feature->get_name()->get_string();
                if (method_names.lookup(curr_method_name) != NULL) {
                    ostream& err_stream = semant_error(curr_class->get_filename_1(), curr_feature);
                    err_stream << "Method " << curr_method_name << " is multiply defined.\n";
                    status = 1;
                } else {
                    method_names.addid(curr_method_name, new int(42));
                }
            }
        }
    }
    return status;
}

/**
* *****************************************************
* Make sure return types and formal parameter types
*       of all methods are valid for the program.
* Method no longer used 
* *****************************************************
*/
int ClassTable::check_methods_types(Classes classes_in_program) {
    int status = 0;
    for (int i = classes_in_program->first(); classes_in_program->more(i); i = classes_in_program->next(i)) {
        Class_ curr_class = classes_in_program->nth(i);
        Features features = curr_class->get_features();
        for (int j = features->first(); features->more(j); j = features->next(j)) {
            Feature curr_feature = features->nth(j);
            if (strcmp(curr_feature->get_type_name(), "method") == 0) {
                Formals formals = curr_feature->get_formals();
                for (int k = formals->first(); formals->more(k); k = formals->next(k)) {
                    Formal curr_formal = formals->nth(k);
                    if (defined_types->lookup(curr_formal->get_type()->get_string()) == NULL) {
                        ostream& err_stream = semant_error(curr_class->get_filename_1(), curr_formal);
                        err_stream << "Class " << curr_formal->get_type()->get_string() << " of formal parameter " << curr_formal->get_name()->get_string() <<" is undefined.\n";
                        status = 1;
                    }
                }
                if (strcmp(curr_feature->get_type()->get_string(), "SELF_TYPE") != 0) {
                    if (defined_types->lookup(curr_feature->get_type()->get_string()) == NULL) {
                        ostream& err_stream = semant_error(curr_class->get_filename_1(), curr_feature);
                        err_stream << "Undefined return type " << curr_feature->get_type()->get_string() << " in method " << curr_feature->get_name()->get_string() << ".\n";
                        status = 1;
                    }
                }
            }
        }
    }
    return status;
}

/**
* *****************************************************
* Return 1 on error, 0 otherwise. 
* *****************************************************
*/
int ClassTable::check_for_main(Classes classes_in_program) {
    int status = 0;
    bool main_class_present = false;
    bool main_method_present = false;
    for (int i = classes_in_program->first(); classes_in_program->more(i); i = classes_in_program->next(i)) {
        Class_ curr_class = classes_in_program->nth(i);
        if (strcmp(curr_class->get_name()->get_string(), "Main") == 0) {
            main_class_present = true;
            Features features = curr_class->get_features();
            for (int i = features->first(); features->more(i); i = features->next(i)) {
                Feature curr_feature = features->nth(i);
                if (strcmp(curr_feature->get_type_name(), "method") == 0) {
                    if (strcmp(curr_feature->get_name()->get_string(), "main") == 0) {
                        main_method_present = true;
                    }
                }
            }
            if (main_method_present == false) {
                ostream& err_stream = semant_error(curr_class);
                err_stream << "No 'main' method in class " << curr_class->get_name()->get_string() << ".\n";
                status = 1;
            }
        }
    }
    if (main_class_present == false) {
        ostream& err_stream = semant_error();
        err_stream << "Class Main is not defined.\n";
        status = 1;
    }
    return status;
}

/**
* *****************************************************
* Find and report all cycles in inheritance. 
* *****************************************************
*/
int ClassTable::check_for_inheritance_cycle(Classes classes_in_program) {
    int status = 0;
    SymbolTable<Symbol, Entry> parents;
    parents.enterscope();
    for (int i = classes_in_program->first(); classes_in_program->more(i); i = classes_in_program->next(i)) {
        Class_ curr_class = classes_in_program->nth(i);
        parents.addid(curr_class->get_name(), curr_class->get_parent());
    }
    for (int i = classes_in_program->first(); classes_in_program->more(i); i = classes_in_program->next(i)) {
        Class_ curr_class = classes_in_program->nth(i);
        Symbol base_class = curr_class->get_name();
        Symbol curr_parent = curr_class->get_parent();
        while (true) {
            if (strcmp(curr_parent->get_string(), base_class->get_string()) == 0) {
                ostream& err_stream = semant_error(curr_class);
                err_stream << "Class " << base_class->get_string() << ", or an ancestor of " << base_class->get_string();
                err_stream << ", is involved in an inheritance cycle.\n";
                status = 1;
                break;
             } else if (strcmp(curr_parent->get_string(), "_no_class") == 0) break;
             curr_parent = parents.lookup(curr_parent);
        }
    }
    return status;
}

/**
* *****************************************************
* At this level we check for three things:
*     - cannot inherit from an undefined class.
*     - cannot inherit from Int, Str, Bool, SELF_TYPE
* *****************************************************
*/
int ClassTable::check_for_valid_inheritance(Classes classes, SymbolTable<char*, int>* defined_types) {
    int status = 0;
    for (int i = classes->first(); classes->more(i); i = classes->next(i)) {
        Class_ curr_class = classes->nth(i);
        Symbol parent = curr_class->get_parent();
        char* parent_name = parent->get_string();
        if (parent_is_forbidden(parent_name) == true) {
            ostream& err_stream = semant_error(curr_class);
            err_stream << "Class " << curr_class->get_name()->get_string() << " cannot inherit class " << parent_name << ".\n";
            status = 1;
        } else if (defined_types->probe(parent_name) == NULL) {
            ostream& err_stream = semant_error(curr_class);
            err_stream << "Class " << curr_class->get_name()->get_string() << " inherits from an undefined class " << parent_name << ".\n";
            status = 1;
        }
    }
    return status;
}

bool ClassTable::parent_is_forbidden(char* name) {
    if (strcmp(name, "SELF_TYPE") == 0) return true;
    if (strcmp(name, "Int") == 0) return true;
    if (strcmp(name, "Bool") == 0) return true;
    if (strcmp(name, "String") == 0) return true;
    return false;
}

/** 
* ***************************************************
* Init valid symbols.
*   - checks for duplicate class names
*   - checks for class names using SELF_TYPE
* ***************************************************
*/
SymbolTable<char*, int>* ClassTable::collect_all_valid_types(Classes classes) {
    SymbolTable<char*, int>* defined_types = new SymbolTable<char*, int>;
    defined_types->enterscope();
    for (int i = classes->first(); classes->more(i); i = classes->next(i)) {
        Class_ curr_class = classes->nth(i);
        char* curr_class_name = curr_class->get_name()->get_string();
        if (name_is_reserved_classname(curr_class_name) == true) {
            ostream& err_stream = semant_error(curr_class);
            err_stream << "Redefinition of basic class " << curr_class_name << ".\n";
        } else if (defined_types->probe(curr_class_name) != NULL) {
            ostream& err_stream = semant_error(curr_class);
            err_stream << "Class " << curr_class_name << " was previously defined.\n";
        } else {
            defined_types->addid((curr_class_name), new int(42));
        }
    }
    defined_types->addid(Object->get_string(), new int(42));
    defined_types->addid(IO->get_string(), new int(42));
    defined_types->addid(Int->get_string(), new int(42));
    defined_types->addid(Bool->get_string(), new int(42));
    defined_types->addid(Str->get_string(), new int(42));
    defined_types->addid(SELF_TYPE->get_string(), new int(42));
    return defined_types;
}

bool ClassTable::name_is_reserved_classname(char* name) {
    if (strcmp(name, SELF_TYPE->get_string()) == 0) return true;
    if (strcmp(name, Object->get_string()) == 0) return true;
    if (strcmp(name, IO->get_string()) == 0) return true;
    if (strcmp(name, Int->get_string()) == 0) return true;
    if (strcmp(name, Bool->get_string()) == 0) return true;
    if (strcmp(name, Str->get_string()) == 0) return true;
    return false;
}

/**
* ***************************************************
* Returns a class object
* ***************************************************
*/
Class_ ClassTable::find_class_by_name(Classes classes, char* name) {
    for (int i = classes->first(); classes->more(i); i = classes->next(i)) {
        Class_ curr_class = classes->nth(i);
        char* curr_class_name = curr_class->get_name()->get_string();
        if (strcmp(curr_class_name, name) == 0) return curr_class;
    }
    return NULL;
}

/**
* ***************************************************
* Return Feature of containing_class if its method
*       name matches method_name, or NULL otherwise. 
* ***************************************************
*/
Feature ClassTable::find_method_by_name(Class_ containing_class, char* method_name) {
    Features features = containing_class->get_features();
    for (int i = features->first(); features->more(i); i = features->next(i)) {
        Feature curr_feature = features->nth(i);
        if (strcmp(curr_feature->get_type_name(), "method") == 0) {
            if (strcmp(curr_feature->get_name()->get_string(), method_name) == 0) {
                return curr_feature;
            }
        }
    }
    return NULL;
}

/**
* ***************************************************
* Return true if type1 is a parent of type2, fale othewise. 
* check all of type2's parents and if one matches type1's name
* return true. 
* ***************************************************
*/
bool ClassTable::is_parent(Classes classes_in_program, Symbol type1, Symbol type2) {
    Class_ curr_class = find_class_by_name(classes_in_program, type2->get_string());
    while (true) {
        if (strcmp(curr_class->get_parent()->get_string(), type1->get_string()) == 0) return true;
        if (strcmp(curr_class->get_parent()->get_string(), "_no_class") == 0) break;
        curr_class = find_class_by_name(classes_in_program, curr_class->get_parent()->get_string());
    }
    return false;
}

/**
*/
Feature ClassTable::find_attribute_by_name(Class_ containing_class, char* name) {
    Features features = containing_class->get_features();
    for (int i = features->first(); features->more(i); i = features->next(i)) {
        Feature curr_feature = features->nth(i);
        if (strcmp(curr_feature->get_name()->get_string(), name) == 0) {
            return curr_feature;
        }
    }
    return NULL;
}

/**
* ***************************************************
* Allocate a new symbol table and give the node a copy.
* Take care to add all attributes from parent classes. 
* ***************************************************
*/
void ClassTable::initialize_class_enviornment(Class_ curr_class) {
    SymbolTable<Symbol, Entry>* class_scope_variables = new SymbolTable<Symbol, Entry>();
    class_scope_variables->enterscope();
    Features features = curr_class->get_features();
    for (int i = features->first(); features->more(i); i = features->next(i)) {
        Feature curr_feature = features->nth(i);
        if (strcmp(curr_feature->get_type_name(), "attribute") == 0) {
            if (class_scope_variables->probe(curr_feature->get_name()) != NULL) {
                ostream& err_stream = semant_error(curr_class->get_filename_1(), curr_feature);
                err_stream << "Attribute " << curr_feature->get_name()->get_string() << " is multiply defined in class.\n";
            } 
            if (name_is_reserved_classname(curr_class->get_name()->get_string()) == false) {
                if (defined_types->lookup(curr_feature->get_type()->get_string()) == NULL) {
                    ostream& err_stream = semant_error(curr_class->get_filename_1(), curr_feature);
                    err_stream << "Class " << curr_feature->get_type()->get_string() << " of attribute " << curr_feature->get_name()->get_string() << " is undefined.\n";
                    class_scope_variables->addid(curr_feature->get_name(), curr_feature->get_type());
                } else {
                    class_scope_variables->addid(curr_feature->get_name(), curr_feature->get_type());
                }
            } else {
                class_scope_variables->addid(curr_feature->get_name(), curr_feature->get_type());
            }
        }
    }
    Class_ curr_parent = curr_class;
    while (true) {
        curr_parent = find_class_by_name(program_classes_AST, curr_parent->get_parent()->get_string());
        if (curr_parent == NULL) break;
        Features features = curr_parent->get_features();
        for (int i = features->first(); features->more(i); i = features->next(i)) {
            Feature curr_feature = features->nth(i);
            if (strcmp(curr_feature->get_type_name(), "attribute") == 0) {
                if (class_scope_variables->probe(curr_feature->get_name()) != NULL) {
                    Feature duplicate_attr = find_attribute_by_name(curr_class, curr_feature->get_name()->get_string());
                    ostream& err_stream = semant_error(curr_class->get_filename_1(), duplicate_attr);
                    err_stream << "Attribute " << curr_feature->get_name()->get_string() << " is an attribute of an inherited class.\n";
                } else {
                    if(name_is_reserved_classname(curr_parent->get_name()->get_string()) == false) {
                        /*if (defined_types->lookup(curr_feature->get_type()->get_string()) != NULL) {
                            class_scope_variables->addid(curr_feature->get_name(), curr_feature->get_type());
                        }*/
                        class_scope_variables->addid(curr_feature->get_name(), curr_feature->get_type());
                    }
                }
            }
        } 
    }
    class_scope_variables->addid(self, curr_class->get_name());
    curr_class->set_variables_in_scope(class_scope_variables);
    curr_class->set_root_class(curr_class);
}

/**
* ***************************************************
* Enter a new scope for a formal. 
* ***************************************************
*/
void ClassTable::initialize_feature_enviornment(Class_ parent_class, Feature feature_to_init) {
    feature_to_init->set_root_class(parent_class->get_root_class());
    if (strcmp(feature_to_init->get_type_name(), "method") == 0) {
        SymbolTable<Symbol, Entry>* variables_in_scope = (parent_class->get_variables_in_scope());
        variables_in_scope->enterscope();
        feature_to_init->set_variables_in_scope(variables_in_scope);
        Formals formals = feature_to_init->get_formals();
        for (int i = formals->first(); formals->more(i); i = formals->next(i)) {
            Formal curr_formal = formals->nth(i);
            initialize_formal(feature_to_init->get_root_class(), feature_to_init->get_variables_in_scope(), curr_formal);
        }
        initialize_expression(feature_to_init->get_root_class(), feature_to_init->get_variables_in_scope(), feature_to_init->get_expression());
    } else if (strcmp(feature_to_init->get_type_name(), "attribute") == 0) {
        feature_to_init->set_variables_in_scope(parent_class->get_variables_in_scope());
        initialize_expression(feature_to_init->get_root_class(), feature_to_init->get_variables_in_scope(), feature_to_init->get_expression());
    }
}

/**
* ***************************************************
* just need to add the formal to the table and then set the fields for the formal
* ***************************************************
*/
void ClassTable::initialize_formal(Class_ root_class, SymbolTable<Symbol, Entry>* variables_in_scope, Formal formal_to_init) {
    formal_to_init->set_root_class(root_class);
    formal_to_init->set_variables_in_scope(variables_in_scope);
    bool can_add = true;
    if (variables_in_scope->probe(formal_to_init->get_name()) != NULL) {
        ostream& err_stream = semant_error(root_class->get_filename_1(), formal_to_init);
        err_stream << "Formal parameter " << formal_to_init->get_name()->get_string() << " is multiply defined.\n";
        can_add = false;
    } 
    if (defined_types->lookup(formal_to_init->get_type()->get_string()) == NULL) {
        //ostream& err_stream = semant_error(root_class->get_filename_1(), formal_to_init);
        //err_stream << "Class " << formal_to_init->get_type()->get_string() << " of formal parameter " << formal_to_init->get_name()->get_string() << " is undefined.\n";
        //type checking in check_types
    } 
    if (can_add == true) variables_in_scope->addid(formal_to_init->get_name(), formal_to_init->get_type());
}

void ClassTable::initialize_expression(Class_ root_class, SymbolTable<Symbol, Entry>* variables_in_scope, Expression expression_to_init) {
    expression_to_init->set_root_class(root_class);
    expression_to_init->set_variables_in_scope(variables_in_scope);

    /* Base case 0: expr is an Object expression */
    if (strcmp(expression_to_init->get_type_name(), "object") == 0) {
        /* check if the object is in the symbol table. If it is, we are happy, otherwise, error */
        if (variables_in_scope->lookup(expression_to_init->get_name()) == NULL) {
            ostream& err_stream = semant_error(expression_to_init->get_root_class()->get_filename_1(), expression_to_init);
            err_stream << "Undeclared identifier " << expression_to_init->get_name()->get_string() << ".\n";
        }
        return; 
    }

    /* Base case 1: No expression */
    if (strcmp(expression_to_init->get_type_name(), "no_expr") == 0) return; 

    /* Base case 2: new */
    if (strcmp(expression_to_init->get_type_name(), "new_") == 0) {
        if (defined_types->lookup(expression_to_init->get_var_type()->get_string()) == NULL) {
            ostream& err_stream = semant_error(expression_to_init->get_root_class()->get_filename_1(), expression_to_init);
            err_stream << "'New' used with undefined class " << expression_to_init->get_var_type()->get_string() << ".\n";
        }
        return;
    } 

    /* Base case 3: string_const */
    if (strcmp(expression_to_init->get_type_name(), "string_const") == 0) return; 

    /* Base case 4: Bool_const */
    if (strcmp(expression_to_init->get_type_name(), "bool_const") == 0) return; 

    /* Base case 5: Int const */
    if (strcmp(expression_to_init->get_type_name(), "int_const") == 0) return; 

    /* Recurse case 0: Is void */
    if (strcmp(expression_to_init->get_type_name(), "isvoid") == 0) {
        initialize_expression(expression_to_init->get_root_class(), expression_to_init->get_variables_in_scope(), expression_to_init->get_expression_1());
        return;
    } 

    /* Recurse case 1: comp */
    if (strcmp(expression_to_init->get_type_name(), "comp") == 0) {
        initialize_expression(expression_to_init->get_root_class(), expression_to_init->get_variables_in_scope(), expression_to_init->get_expression_1());
        return;
    } 

    /* Recurse case 2: leq */
    if (strcmp(expression_to_init->get_type_name(), "leq") == 0) {
        initialize_expression(expression_to_init->get_root_class(), expression_to_init->get_variables_in_scope(), expression_to_init->get_expression_1());
        initialize_expression(expression_to_init->get_root_class(), expression_to_init->get_variables_in_scope(), expression_to_init->get_expression_2());
        return;
    } 

    /* Recurse case 3: eq */
    if (strcmp(expression_to_init->get_type_name(), "eq") == 0) {
        initialize_expression(expression_to_init->get_root_class(), expression_to_init->get_variables_in_scope(), expression_to_init->get_expression_1());
        initialize_expression(expression_to_init->get_root_class(), expression_to_init->get_variables_in_scope(), expression_to_init->get_expression_2());
        return;
    } 

    /* Recurse case 4: lt */
    if (strcmp(expression_to_init->get_type_name(), "lt") == 0) {
        initialize_expression(expression_to_init->get_root_class(), expression_to_init->get_variables_in_scope(), expression_to_init->get_expression_1());
        initialize_expression(expression_to_init->get_root_class(), expression_to_init->get_variables_in_scope(), expression_to_init->get_expression_2());
        return;
    } 

    /* Recurse case 5: neg */
    if (strcmp(expression_to_init->get_type_name(), "neg") == 0) {
        initialize_expression(expression_to_init->get_root_class(), expression_to_init->get_variables_in_scope(), expression_to_init->get_expression_1());
        return;
    } 

    /* Recurse case 5: divide */
    if (strcmp(expression_to_init->get_type_name(), "divide") == 0) {
        initialize_expression(expression_to_init->get_root_class(), expression_to_init->get_variables_in_scope(), expression_to_init->get_expression_1());
        initialize_expression(expression_to_init->get_root_class(), expression_to_init->get_variables_in_scope(), expression_to_init->get_expression_2());
        return;
    } 

    /* Recurse case 6: mul */
    if (strcmp(expression_to_init->get_type_name(), "mul") == 0) {
        initialize_expression(expression_to_init->get_root_class(), expression_to_init->get_variables_in_scope(), expression_to_init->get_expression_1());
        initialize_expression(expression_to_init->get_root_class(), expression_to_init->get_variables_in_scope(), expression_to_init->get_expression_2());
        return;
    } 

    /* Recurse case 7: sub */
    if (strcmp(expression_to_init->get_type_name(), "sub") == 0) {
        initialize_expression(expression_to_init->get_root_class(), expression_to_init->get_variables_in_scope(), expression_to_init->get_expression_1());
        initialize_expression(expression_to_init->get_root_class(), expression_to_init->get_variables_in_scope(), expression_to_init->get_expression_2());
        return;
    } 

    /* Recurse case 8: plus */
    if (strcmp(expression_to_init->get_type_name(), "plus") == 0) {
        initialize_expression(expression_to_init->get_root_class(), expression_to_init->get_variables_in_scope(), expression_to_init->get_expression_1());
        initialize_expression(expression_to_init->get_root_class(), expression_to_init->get_variables_in_scope(), expression_to_init->get_expression_2());
        return;
    } 

    /* Recurse case 9: block */
    if (strcmp(expression_to_init->get_type_name(), "block") == 0) {
        Expressions expressions = expression_to_init->get_expressions();
        for (int j = expressions->first(); expressions->more(j); j = expressions->next(j)) {
            Expression curr_expr = expressions->nth(j);
            initialize_expression(expression_to_init->get_root_class(), expression_to_init->get_variables_in_scope(), curr_expr);
        }
        return;
    } 

    /* Recurse case 10: loop */
    if (strcmp(expression_to_init->get_type_name(), "loop") == 0) {
        initialize_expression(expression_to_init->get_root_class(), expression_to_init->get_variables_in_scope(), expression_to_init->get_expression_1());
        initialize_expression(expression_to_init->get_root_class(), expression_to_init->get_variables_in_scope(), expression_to_init->get_expression_2());
        return;
    } 

    /* Recurse case 11: cond */
    if (strcmp(expression_to_init->get_type_name(), "cond") == 0) {
        initialize_expression(expression_to_init->get_root_class(), expression_to_init->get_variables_in_scope(), expression_to_init->get_expression_1());
        initialize_expression(expression_to_init->get_root_class(), expression_to_init->get_variables_in_scope(), expression_to_init->get_expression_2());
        initialize_expression(expression_to_init->get_root_class(), expression_to_init->get_variables_in_scope(), expression_to_init->get_expression_3());
        return;
    } 

     /* Recurse case 12:  dispatch */
    if (strcmp(expression_to_init->get_type_name(), "dispatch") == 0) {
        Expressions expressions = expression_to_init->get_expressions();
        for (int i = expressions->first(); expressions->more(i); i = expressions->next(i)) {
            initialize_expression(expression_to_init->get_root_class(), expression_to_init->get_variables_in_scope(), expressions->nth(i));
        }
        initialize_expression(expression_to_init->get_root_class(), expression_to_init->get_variables_in_scope(), expression_to_init->get_expression_1());
        return;
    } 

     /* Recurse case 13: static dispatch */
    if (strcmp(expression_to_init->get_type_name(), "static_dispatch") == 0) {
        Expressions expressions = expression_to_init->get_expressions();
        for (int i = expressions->first(); expressions->more(i); i = expressions->next(i)) {
            initialize_expression(expression_to_init->get_root_class(), expression_to_init->get_variables_in_scope(), expressions->nth(i));
        }
        initialize_expression(expression_to_init->get_root_class(), expression_to_init->get_variables_in_scope(), expression_to_init->get_expression_1());
        return;
    } 

     /* Recurse case 14: assign */
    if (strcmp(expression_to_init->get_type_name(), "assign") == 0) {
        if (variables_in_scope->lookup(expression_to_init->get_name()) == NULL) {
            ostream& err_stream = semant_error(expression_to_init->get_root_class()->get_filename_1(), expression_to_init);
            err_stream << "Undeclared identifier " << expression_to_init->get_name()->get_string() << ".\n";
        }
        initialize_expression(expression_to_init->get_root_class(), expression_to_init->get_variables_in_scope(), expression_to_init->get_expression_1());
        return;
    } 

    /* Recursive case with new scope 0: let statement */
    if (strcmp(expression_to_init->get_type_name(), "let") == 0) {
        expression_to_init->get_variables_in_scope()->enterscope();
        if (defined_types->lookup(expression_to_init->get_var_type()->get_string()) == NULL) {
            ostream& err_stream = semant_error(expression_to_init->get_root_class()->get_filename_1(), expression_to_init);
            err_stream << "Class " << expression_to_init->get_var_type()->get_string() << " of let-bound identifier " << expression_to_init->get_name()->get_string() << " is undefined.\n";
        }
        expression_to_init->get_variables_in_scope()->addid(expression_to_init->get_name(), expression_to_init->get_var_type());
        initialize_expression(expression_to_init->get_root_class(), expression_to_init->get_variables_in_scope(), expression_to_init->get_expression_1());
        initialize_expression(expression_to_init->get_root_class(), expression_to_init->get_variables_in_scope(), expression_to_init->get_expression_2());
        return;
    } 

    /* Recursive case with new scope 1: case statement */
    if (strcmp(expression_to_init->get_type_name(), "typcase") == 0) {
        initialize_expression(expression_to_init->get_root_class(), expression_to_init->get_variables_in_scope(), expression_to_init->get_expression_1());
        Cases cases = expression_to_init->get_cases();
        SymbolTable<char*, int>* case_types_so_far = new SymbolTable<char*, int>();
        case_types_so_far->enterscope();
        for (int i = cases->first(); cases->more(i); i = cases->next(i)) {
            SymbolTable<Symbol, Entry>* variables_in_scope = expression_to_init->get_variables_in_scope();
            Case curr_case = cases->nth(i);
            initialize_case_enviornment(variables_in_scope, case_types_so_far, root_class, curr_case);
        }
        return;
    }
}

void ClassTable::initialize_case_enviornment(SymbolTable<Symbol, Entry>* variables_in_scope, SymbolTable<char*, int>* case_types_so_far, Class_ root_class, Case curr_case) {
    curr_case->set_root_class(root_class);
    if (case_types_so_far->lookup(curr_case->get_type_decl()->get_string()) != NULL) {
        ostream& err_stream = semant_error(root_class->get_filename_1(), curr_case);
        err_stream << "Duplicate branch " << curr_case->get_type_decl()->get_string() << " in case statement.\n"; 
    } else {
        case_types_so_far->addid(curr_case->get_type_decl()->get_string(), new int(42));
    }
    variables_in_scope->enterscope();
    variables_in_scope->addid(curr_case->get_name(), curr_case->get_type_decl());
    curr_case->set_variables_in_scope(variables_in_scope);
    initialize_expression(curr_case->get_root_class(), curr_case->get_variables_in_scope(), curr_case->get_expr());
}
    


Classes ClassTable::install_basic_classes(Classes classes_of_program) {

    // The tree package uses these globals to annotate the classes built below.
   // curr_lineno  = 0;
    Symbol filename = stringtable.add_string("<basic class>");
    
    // The following demonstrates how to create dummy parse trees to
    // refer to basic Cool classes.  There's no need for method
    // bodies -- these are already built into the runtime system.
    
    // IMPORTANT: The results of the following expressions are
    // stored in local variables.  You will want to do something
    // with those variables at the end of this method to make this
    // code meaningful.

    // 
    // The Object class has no parent class. Its methods are
    //        abort() : Object    aborts the program
    //        type_name() : Str   returns a string representation of class name
    //        copy() : SELF_TYPE  returns a copy of the object
    //
    // There is no need for method bodies in the basic classes---these
    // are already built in to the runtime system.

    Class_ Object_class =
	class_(Object, 
	       No_class,
	       append_Features(
			       append_Features(
					       single_Features(method(cool_abort, nil_Formals(), Object, no_expr())),
					       single_Features(method(type_name, nil_Formals(), Str, no_expr()))),
			       single_Features(method(copy, nil_Formals(), SELF_TYPE, no_expr()))),
	       filename);

    classes_of_program = append_Classes(classes_of_program, single_Classes(Object_class));

    // 
    // The IO class inherits from Object. Its methods are
    //        out_string(Str) : SELF_TYPE       writes a string to the output
    //        out_int(Int) : SELF_TYPE            "    an int    "  "     "
    //        in_string() : Str                 reads a string from the input
    //        in_int() : Int                      "   an int     "  "     "
    //
    Class_ IO_class = 
	class_(IO, 
	       Object,
	       append_Features(
			       append_Features(
					       append_Features(
							       single_Features(method(out_string, single_Formals(formal(arg, Str)),
										      SELF_TYPE, no_expr())),
							       single_Features(method(out_int, single_Formals(formal(arg, Int)),
										      SELF_TYPE, no_expr()))),
					       single_Features(method(in_string, nil_Formals(), Str, no_expr()))),
			       single_Features(method(in_int, nil_Formals(), Int, no_expr()))),
	       filename); 

    classes_of_program = append_Classes(classes_of_program, single_Classes(IO_class));

    //
    // The Int class has no methods and only a single attribute, the
    // "val" for the integer. 
    //
    Class_ Int_class =
	class_(Int, 
	       Object,
	       single_Features(attr(val, prim_slot, no_expr())),
	       filename);

    classes_of_program = append_Classes(classes_of_program, single_Classes(Int_class));

    //
    // Bool also has only the "val" slot.
    //
    Class_ Bool_class =
	class_(Bool, Object, single_Features(attr(val, prim_slot, no_expr())),filename);

    classes_of_program = append_Classes(classes_of_program, single_Classes(Bool_class));

    //
    // The class Str has a number of slots and operations:
    //       val                                  the length of the string
    //       str_field                            the string itself
    //       length() : Int                       returns length of the string
    //       concat(arg: Str) : Str               performs string concatenation
    //       substr(arg: Int, arg2: Int): Str     substring selection
    //       
    Class_ Str_class =
	class_(Str, 
	       Object,
	       append_Features(
			       append_Features(
					       append_Features(
							       append_Features(
									       single_Features(attr(val, Int, no_expr())),
									       single_Features(attr(str_field, prim_slot, no_expr()))),
							       single_Features(method(length, nil_Formals(), Int, no_expr()))),
					       single_Features(method(concat, 
								      single_Formals(formal(arg, Str)),
								      Str, 
								      no_expr()))),
			       single_Features(method(substr, 
						      append_Formals(single_Formals(formal(arg, Int)), 
								     single_Formals(formal(arg2, Int))),
						      Str, 
						      no_expr()))),
	       filename);

    classes_of_program = append_Classes(classes_of_program, single_Classes(Str_class));

    return classes_of_program;
}

////////////////////////////////////////////////////////////////////
//
// semant_error is an overloaded function for reporting errors
// during semantic analysis.  There are three versions:
//
//    ostream& ClassTable::semant_error()                
//
//    ostream& ClassTable::semant_error(Class_ c)
//       print line number and filename for `c'
//
//    ostream& ClassTable::semant_error(Symbol filename, tree_node *t)  
//       print a line number and filename
//
///////////////////////////////////////////////////////////////////

ostream& ClassTable::semant_error(Class_ c) 
{                                                             
    return semant_error(c->get_filename(),c);
}    

ostream& ClassTable::semant_error(Symbol filename, tree_node *t)
{
    error_stream << filename << ":" << t->get_line_number() << ": ";
    return semant_error();
}

ostream& ClassTable::semant_error()                  
{                                                 
    semant_errors++;                            
    return error_stream;
} 

/**
* ***************************************************
* Notes: 
* ***************************************************
*/
void ClassTable::settup_typecheck_enviornment() {
    for (int i = program_classes_AST->first(); program_classes_AST->more(i); i = program_classes_AST->next(i)) {
        Class_ curr_class = program_classes_AST->nth(i);
        initialize_class_enviornment(curr_class);
        Features features = curr_class->get_features();
        for (int j = features->first(); features->more(j); j = features->next(j)) {
            Feature curr_feature = features->nth(j);
            initialize_feature_enviornment(curr_class, curr_feature);
        }
    }
}

void ClassTable::setup_inheritance_graph() {
    inheritance_graph = new SymbolTable<Symbol, Entry>();
    inheritance_graph->enterscope();
    for (int i = program_classes_AST->first(); program_classes_AST->more(i); i = program_classes_AST->next(i)) {
        Class_ curr_class = program_classes_AST->nth(i);
        inheritance_graph->addid(curr_class->get_name(), curr_class->get_parent());
    }
}

bool ClassTable::isparent(Symbol t1, Symbol t2, Class_ root_class) {
    if (strcmp(t1->get_string(), SELF_TYPE->get_string()) == 0) {
        t1 = root_class->get_name();
    }

    if (strcmp(t2->get_string(), SELF_TYPE->get_string()) == 0) {
        t2 = root_class->get_name();
    }

    if (!inheritance_graph->lookup(t1)) {
        return false;
    }
    if (!inheritance_graph->lookup(t2)) {
        return false;
    }    

    while (t2) {
        if (strcmp(t1->get_string(), t2->get_string()) == 0) return true;
        t2 = inheritance_graph->lookup(t2);
    }
    return false;
}

Symbol ClassTable::get_common_parent(Symbol t1, Symbol t2, Class_ root_class) {
    if (strcmp(t1->get_string(), SELF_TYPE->get_string()) == 0) {
        t1 = root_class->get_name();
    }

    if (strcmp(t2->get_string(), SELF_TYPE->get_string()) == 0) {
        t2 = root_class->get_name();
    }

    if (!inheritance_graph->lookup(t1)) { return NULL; }
    if (!inheritance_graph->lookup(t2)) { return NULL; }

    Symbol temp;
    while (t1) {
     temp = t2;
     while (temp) {
        if (strcmp(t1->get_string(), temp->get_string()) == 0) return t1;
        temp = inheritance_graph->lookup(temp);
     }
     t1 = inheritance_graph->lookup(t1);
    }
    return NULL; // This is an error; object, at least, should be a common parent
}

/**
*/
Symbol ClassTable::typecheck_expression(Expression e) {

    if (strcmp(e->get_type_name(), "assign") == 0) {
        return typecheck_assign(e);
    }

    if (strcmp(e->get_type_name(), "static_dispatch") == 0) {

        return typecheck_static_dispatch(e);
    }

    if (strcmp(e->get_type_name(), "dispatch") == 0) {
        return typecheck_dispatch(e);
    }

    if (strcmp(e->get_type_name(), "cond") == 0) {
        return typecheck_cond(e);
    }

    if (strcmp(e->get_type_name(), "loop") == 0) {
        return typecheck_loop(e);
    }

    if (strcmp(e->get_type_name(), "typcase") == 0) {
        return typecheck_typcase(e);
    }

    if (strcmp(e->get_type_name(), "block") == 0) {
        return typecheck_block(e);
    }

    if (strcmp(e->get_type_name(), "let") == 0) {
        return typecheck_let(e);
    }

    if (strcmp(e->get_type_name(), "plus") == 0) {
        return typecheck_plus(e);
    }

    if (strcmp(e->get_type_name(), "sub") == 0) {
        return typecheck_sub(e);
    }

    if (strcmp(e->get_type_name(), "mul") == 0) {
        return typecheck_mul(e);
    }

    if (strcmp(e->get_type_name(), "divide") == 0) {
        return typecheck_divide(e);
    }

    if (strcmp(e->get_type_name(), "neg") == 0) {
        return typecheck_neg(e);
    }

    if (strcmp(e->get_type_name(), "lt") == 0) {
        return typecheck_lt(e);
    }

    if (strcmp(e->get_type_name(), "eq") == 0) {
        return typecheck_eq(e);
    }

    if (strcmp(e->get_type_name(), "leq") == 0) {
        return typecheck_leq(e);
    }

    if (strcmp(e->get_type_name(), "comp") == 0) {
        return typecheck_comp(e);
    }

    if (strcmp(e->get_type_name(), "int_const") == 0) {
        return typecheck_int_const(e);
    }

    if (strcmp(e->get_type_name(), "bool_const") == 0) {
        return typecheck_bool_const(e);
    }

    if (strcmp(e->get_type_name(), "string_const") == 0) {
        return typecheck_string_const(e);
    }

    if (strcmp(e->get_type_name(), "new_") == 0) {
        return typecheck_new_(e);
    }

    if (strcmp(e->get_type_name(), "isvoid") == 0) {
        return typecheck_isvoid(e);
    }

    if (strcmp(e->get_type_name(), "no_expr") == 0) {
        return typecheck_no_expr(e);
    }

    if (strcmp(e->get_type_name(), "object") == 0) {
        return typecheck_object(e);
    }
    return Object;
}

/**
*/
void ClassTable::typecheck_method(Feature method) {
    Symbol method_return_type = check_method_types(method);
    if (method_return_type == NULL) return;
    Symbol method_body_type = typecheck_expression(method->get_expression());
    if (strcmp(method_body_type->get_string(), No_class->get_string()) == 0) return;
    if (isparent(method_return_type, method_body_type, method->get_root_class()) == false) {
        ostream& err_stream = semant_error(method->get_root_class()->get_filename_1(), method);
        err_stream << "Inferred return type " << method_body_type->get_string() << " of method " << method->get_name()->get_string() << " does not conform to declared return type " << method_return_type->get_string() <<".\n"; 
    }
}

/**
* ***************************************************
* Return the return type of the method, or 
*       Null if error.
* ***************************************************
*/
Symbol ClassTable::check_method_types(Feature feature) {
    Formals formals = feature->get_formals();
    for (int k = formals->first(); formals->more(k); k = formals->next(k)) {
        Formal curr_formal = formals->nth(k);
        if (defined_types->lookup(curr_formal->get_type()->get_string()) == NULL) {
            ostream& err_stream = semant_error(feature->get_root_class()->get_filename_1(), feature);
            err_stream << "Class " << curr_formal->get_type()->get_string() << " of formal parameter " << curr_formal->get_name()->get_string() <<" is undefined.\n";
        }
    }
    if (strcmp(feature->get_type()->get_string(), "SELF_TYPE") != 0) {   // not self type
        if (defined_types->lookup(feature->get_type()->get_string()) == NULL) {
            ostream& err_stream = semant_error(feature->get_root_class()->get_filename_1(), feature);
            err_stream << "Undefined return type " << feature->get_type()->get_string() << " in method " << feature->get_name()->get_string() << ".\n"; 
            return NULL;
        }
        return feature->get_type();
    }

    // self type
    return SELF_TYPE;
    
}

/**
* ***************************************************
* Rule on page 22 of manual. 
* ***************************************************
*/
void ClassTable::typecheck_attribute(Feature attribute) {
    if (strcmp(attribute->get_expression()->get_type_name(), "no_expr") == 0) return;
    Symbol expression_type = typecheck_expression(attribute->get_expression());
    Symbol attribute_type = attribute->get_type();
    if (isparent(attribute_type, expression_type, attribute->get_root_class()) == false) {
        ostream& err_stream = semant_error(attribute->get_root_class()->get_filename_1(), attribute);
        err_stream << "Inferred type " << expression_type->get_string() << " of initialization of attribute " << attribute->get_name()->get_string() << " does not conform to declared type " << attribute_type->get_string() <<".\n"; 
    }
}

/**
* ***************************************************
* ***************************************************
*/
void ClassTable::typecheck_feature(Feature feature) {
    if (strcmp(feature->get_type_name(), "attribute") == 0) {
        typecheck_attribute(feature);
    } else {
        typecheck_method(feature);
    }
}


/**
* ***************************************************
* Tree roots are the classes. Start there and 
*       work up the tree, moving next to the features. 
* ***************************************************
*/
void ClassTable::typecheck_program() {
    for (int i = program_classes_AST->first(); program_classes_AST->more(i); i = program_classes_AST->next(i)) {
        Class_ curr_class = program_classes_AST->nth(i);
        Features features = curr_class->get_features();
        for (int j = features->first(); features->more(j); j = features->next(j)) {
            Feature curr_feature = features->nth(j);
            typecheck_feature(curr_feature);
        }
    }
}


/*   This is the entry point to the semantic checker.

     Your checker should do the following two things:

     1) Check that the program is semantically correct
     2) Decorate the abstract syntax tree with type information
        by setting the `type' field in each Expression node.
        (see `tree.h')

     You are free to first do 1), make sure you catch all semantic
     errors. Part 2) can be done in a second stage, when you want
     to build mycoolc.
 */
void program_class::semant()
{
    initialize_constants();

    /* ClassTable constructor may do some semantic analysis */
    // put class checking into the constructor. 
    // Shawn also did all other checking here. 
    ClassTable *classtable = new ClassTable(classes);

    if (classtable->errors()) {
	   cerr << "Compilation halted due to static semantic errors." << endl;
	   exit(1);
    }

    int status = classtable->check_for_main(classtable->program_classes_AST); //status is currently unused.
    classtable->validate_methods(classtable->program_classes_AST);
    classtable->settup_typecheck_enviornment();
    classtable->typecheck_program();

    if (classtable->errors()) {
       cerr << "Compilation halted due to static semantic errors." << endl;
       exit(1);
    }
}





Symbol ClassTable::typecheck_assign(Expression e) {
    Symbol name_t = e->get_variables_in_scope()->lookup(e->get_name());
    Symbol expr_t = typecheck_expression(e->get_expression_1());
    if (!name_t) {
        ostream& err_stream = semant_error(e->get_root_class()->get_filename_1(), e);
        err_stream << "Assignment to undeclared variable " << e->get_name()->get_string() << endl;
        e->set_type(Object);
        return Object;
    }
    if (!isparent(name_t, expr_t, e->get_root_class())) {
        ostream& err_stream = semant_error(e->get_root_class()->get_filename_1(), e);
        err_stream << "Type " << expr_t->get_string() << " does not conform to declared type "<< name_t->get_string() << " of identifier" << e->get_name()->get_string() << ".\n";
        e->set_type(Object);
        return Object;
    }
    e->set_type(expr_t);
    return expr_t;
}

Symbol ClassTable::typecheck_static_dispatch(Expression e) {
    Symbol t0 = typecheck_expression(e->get_expression_1());
    Expressions params = e->get_expressions();
    int len = params->len();
    Symbol symbols_array [len];
    for (int i = params->first(); params->more(i); i = params->next(i)) {
        Expression curr_param = params->nth(i);
        symbols_array[i] = typecheck_expression(curr_param);
    }
    if (isparent(e->get_var_type(), t0, e->get_root_class()) == false) {
        ostream& err_stream = semant_error(e->get_root_class()->get_filename_1(), e);
        err_stream << "Expression type " << t0->get_string() << " does not conform to declared static dispatch type " << e->get_var_type()->get_string() << ".\n";
    }
    if (defined_types->lookup(e->get_var_type()->get_string()) == NULL) {
        ostream& err_stream = semant_error(e->get_root_class()->get_filename_1(), e);
        err_stream << "Static dispatch to undefined class " << e->get_var_type()->get_string() << ".\n";
        e->set_type(Object);
        return Object;
    }
    Class_ t_class = find_class_by_name(program_classes_AST, e->get_var_type()->get_string());
    Feature method_def = find_method_by_name(t_class, e->get_name()->get_string());
    if (method_def == NULL) {
        method_def = search_for_inherited_method_def(t_class, e->get_name()->get_string(), program_classes_AST);
        if (method_def == NULL) {
            ostream& err_stream = semant_error(e->get_root_class()->get_filename_1(), e);
            err_stream << "Static dispatch to undefined method " << e->get_name()->get_string() << ".\n";
            e->set_type(Object);
            return Object;
        }
    }
    Formals method_def_formals = method_def->get_formals();
    if (len != method_def_formals->len()) {
        ostream& err_stream = semant_error(e->get_root_class()->get_filename_1(), e);
        err_stream << "Method " << e->get_name()->get_string() << " invoked with wrong number of arguments.\n";
        e->set_type(Object);
        return Object;
    } 
    bool error = false;
    for (int i = method_def_formals->first(); method_def_formals->more(i); i = method_def_formals->next(i)) {
        Symbol curr_type = method_def_formals->nth(i)->get_type();
        if (isparent(curr_type, symbols_array[i], e->get_root_class()) == false) {
            ostream& err_stream = semant_error(e->get_root_class()->get_filename_1(), e);
            err_stream << "In call of method " << e->get_name()->get_string() << " type " << symbols_array[i]->get_string() << " of parameter " << method_def_formals->nth(i)->get_name()->get_string() << " does not conform to declared type " << curr_type->get_string() << ".\n";
            error = true;
        }
    }
    Symbol return_type = method_def->get_type();
    if (defined_types->lookup(return_type->get_string()) == NULL) {
        //ostream& err_stream = semant_error(e->get_root_class()->get_filename_1(), e);
        //err_stream << "Undefined return type " << return_type->get_string() << " in method " << e->get_name()->get_string() << ".\n";
        //printed in type checking of method defs. 
        error = true;
    }
    if (error == true) {
        e->set_type(Object);
        return Object;
    }
    if (strcmp(return_type->get_string(), "SELF_TYPE") == 0) {
        e->set_type(t0);
        return t0;
    }
    e->set_type(return_type);
    return return_type;
}

Symbol ClassTable::typecheck_dispatch(Expression e) {
    Symbol t0 = typecheck_expression(e->get_expression_1());
    Expressions params = e->get_expressions();
    int len = params->len();
    Symbol symbols_array [len];
    for (int i = params->first(); params->more(i); i = params->next(i)) {
        Expression curr_param = params->nth(i);
        symbols_array[i] = typecheck_expression(curr_param);
    }
    if (strcmp(t0->get_string(), "SELF_TYPE") == 0) {
        t0 = e->get_root_class()->get_name();
    }
    Class_ t_class = find_class_by_name(program_classes_AST, t0->get_string());
    Feature method_def = find_method_by_name(t_class, e->get_name()->get_string());
    if (method_def == NULL) {
        method_def = search_for_inherited_method_def(t_class, e->get_name()->get_string(), program_classes_AST);
        if (method_def == NULL) {
            ostream& err_stream = semant_error(e->get_root_class()->get_filename_1(), e);
            err_stream << "Dispatch to undefined method " << e->get_name()->get_string() << ".\n";
            e->set_type(Object);
            return Object;
        }
    }
    Formals method_def_formals = method_def->get_formals();
    if (len != method_def_formals->len()) {
        ostream& err_stream = semant_error(e->get_root_class()->get_filename_1(), e);
        err_stream << "Method " << e->get_name()->get_string() << " invoked with wrong number of arguments.\n";
        e->set_type(Object);
        return Object;
    } 
    bool error = false;
    for (int i = method_def_formals->first(); method_def_formals->more(i); i = method_def_formals->next(i)) {
        Symbol curr_type = method_def_formals->nth(i)->get_type();
        if (isparent(curr_type, symbols_array[i], e->get_root_class()) == false) {
            ostream& err_stream = semant_error(e->get_root_class()->get_filename_1(), e);
            err_stream << "In call of method " << e->get_name()->get_string() << " type " << symbols_array[i]->get_string() << " of parameter " << method_def_formals->nth(i)->get_name()->get_string() << " does not conform to declared type " << curr_type->get_string() << ".\n";
            //error = true;
            //note if formal types are different, the reference compiler does not return Object, but the return type of the method.
        }
    }
    Symbol return_type = method_def->get_type();
    if (defined_types->lookup(return_type->get_string()) == NULL) {
        //ostream& err_stream = semant_error(e->get_root_class()->get_filename_1(), e);
        //err_stream << "Undefined return type " << return_type->get_string() << " in method " << e->get_name()->get_string() << ".\n";
        //printed in typechecking of method defs. 
        error = true;
    }
    if (error == true) {
        e->set_type(Object);
        return Object;
    }
    if (strcmp(return_type->get_string(), "SELF_TYPE") == 0) {
        e->set_type(t0);
        return t0;
    }
    e->set_type(return_type);
    return return_type;
}

Symbol ClassTable::typecheck_cond(Expression e) {
    Symbol pred_t = typecheck_expression(e->get_expression_1());
    bool error = false;
    if (strcmp(pred_t->get_string(), "Bool") != 0) {
        ostream& err_stream = semant_error(e->get_root_class()->get_filename_1(), e);
        err_stream << "Predicate of 'if' does not have type Bool." << endl;
        error = true;
    }
    Symbol then_t = typecheck_expression(e->get_expression_2());
    Symbol else_t = typecheck_expression(e->get_expression_3());
    if (error == true) {
        e->set_type(Object);
        return Object;
    }
    Symbol common_parent = get_common_parent(then_t, else_t, e->get_root_class());
    e->set_type(common_parent);
    return common_parent;
}

Symbol ClassTable::typecheck_loop(Expression e) {
    Symbol predicate_type = typecheck_expression(e->get_expression_1());
    Symbol body_type = typecheck_expression(e->get_expression_2());
    if (strcmp(predicate_type->get_string(), "Bool") != 0 ) {
        ostream& err_stream = semant_error(e->get_root_class()->get_filename_1(), e);
        err_stream << "Loop condition does not have type Bool." << endl;
    }
    e->set_type(Object);
    return Object;
}

Symbol ClassTable::typecheck_typcase(Expression e) {
    Symbol case_predicate_type = typecheck_expression(e->get_expression_1());
    Cases cases = e->get_cases();
    Symbol case_types [cases->len()];
    for (int i = cases->first(); cases->more(i); i = cases->next(i)) {
        Case curr_case = cases->nth(i);
        if (defined_types->lookup(curr_case->get_type_decl()->get_string()) == NULL) {
            ostream& err_stream = semant_error(e->get_root_class()->get_filename_1(), e);
            err_stream << "Class " << curr_case->get_type_decl()->get_string() << " of case branch is undefined." << endl;
        }
        case_types[i] = typecheck_expression(curr_case->get_expr());
    }
    Symbol highest_parent = case_types[0];
    for (int i = 1; i < cases->len(); i++) {
        highest_parent = get_common_parent(highest_parent, case_types[i], e->get_root_class());
    }
    e->set_type(highest_parent);
    return highest_parent;
}

Symbol ClassTable::typecheck_block(Expression e) {
    Expressions expressions = e->get_expressions();
    Symbol return_symbol; 
    for (int i = expressions->first(); expressions->more(i); i = expressions->next(i)) {
        return_symbol = typecheck_expression(expressions->nth(i));
    }
    e->set_type(return_symbol);
    return return_symbol;
}

Symbol ClassTable::typecheck_let(Expression e) {
    Symbol t0 = e->get_var_type();
    Symbol init_type = typecheck_expression(e->get_expression_1());
    if (strcmp(init_type->get_string(), "_no_class") != 0) {
        if (isparent(t0, init_type, e->get_root_class()) == false) {
            ostream& err_stream = semant_error(e->get_root_class()->get_filename_1(), e);
            err_stream << "Inferred type " << init_type->get_string() << " of initialization " << e->get_name()->get_string() << " does not conform to identifier's declared type " << t0->get_string() << ".\n";
        }
    }
    Symbol return_type = typecheck_expression(e->get_expression_2());
    e->set_type(return_type);
    return return_type;
}

Symbol ClassTable::typecheck_plus(Expression e) {
    Symbol t1 = typecheck_expression(e->get_expression_1());
    Symbol t2 = typecheck_expression(e->get_expression_2());
    bool error = false;
    if (strcmp(t2->get_string(), Int->get_string()) != 0) {
        error = true;
    }
    if (strcmp(t1->get_string(), Int->get_string()) != 0) {
        error = true;
    }
    if (error == true) {
        ostream& err_stream = semant_error(e->get_root_class()->get_filename_1(), e);
        err_stream << "non-Int arguments " << t1->get_string() << " + " << t2->get_string() << ".\n";
    }
    e->set_type(Int);
    return Int;
}

Symbol ClassTable::typecheck_sub(Expression e) {
    Symbol t1 = typecheck_expression(e->get_expression_1());
    Symbol t2 = typecheck_expression(e->get_expression_2());
    bool error = false;
    if (strcmp(t2->get_string(), Int->get_string()) != 0) {
        error = true;
    }
    if (strcmp(t1->get_string(), Int->get_string()) != 0) {
        error = true;
    }
    if (error == true) {
        ostream& err_stream = semant_error(e->get_root_class()->get_filename_1(), e);
        err_stream << "non-Int arguments " << t1->get_string() << " - " << t2->get_string() << ".\n";
    }
    e->set_type(Int);
    return Int;
}

Symbol ClassTable::typecheck_mul(Expression e) {
    Symbol t1 = typecheck_expression(e->get_expression_1());
    Symbol t2 = typecheck_expression(e->get_expression_2());
    bool error = false;
    if (strcmp(t2->get_string(), Int->get_string()) != 0) {
        error = true;
    }
    if (strcmp(t1->get_string(), Int->get_string()) != 0) {
        error = true;
    }
    if (error == true) {
        ostream& err_stream = semant_error(e->get_root_class()->get_filename_1(), e);
        err_stream << "non-Int arguments " << t1->get_string() << " * " << t2->get_string() << ".\n";
    }
    e->set_type(Int);
    return Int;
}

Symbol ClassTable::typecheck_divide(Expression e) {
    Symbol t1 = typecheck_expression(e->get_expression_1());
    Symbol t2 = typecheck_expression(e->get_expression_2());
    bool error = false;
    if (strcmp(t2->get_string(), Int->get_string()) != 0) {
        error = true;
    }
    if (strcmp(t1->get_string(), Int->get_string()) != 0) {
        error = true;
    }
    if (error == true) {
        ostream& err_stream = semant_error(e->get_root_class()->get_filename_1(), e);
        err_stream << "non-Int arguments " << t1->get_string() << " / " << t2->get_string() << ".\n";
    }
    e->set_type(Int);
    return Int;
}

Symbol ClassTable::typecheck_comp(Expression e) {
    Symbol t1 = typecheck_expression(e->get_expression_1());
    if (strcmp(t1->get_string(), Bool->get_string()) != 0) {
        ostream& err_stream = semant_error(e->get_root_class()->get_filename_1(), e);
        err_stream << "Argument of 'not' has type " << t1->get_string() << " instead of Bool.\n";
    }
    e->set_type(Bool);
    return Bool;
}

Symbol ClassTable::typecheck_lt(Expression e) {
    Symbol t1 = typecheck_expression(e->get_expression_1());
    Symbol t2 = typecheck_expression(e->get_expression_2());
    bool error = false;
    if (strcmp(t2->get_string(), Int->get_string()) != 0) {
        error = true;
    }
    if (strcmp(t1->get_string(), Int->get_string()) != 0) {
        error = true;
    }
    if (error == true) {
        ostream& err_stream = semant_error(e->get_root_class()->get_filename_1(), e);
        err_stream << "non-Int arguments " << t1->get_string() << " < " << t2->get_string() << ".\n";
    }
    e->set_type(Bool);
    return Bool;
}

Symbol ClassTable::typecheck_eq(Expression e) {
    Symbol t1 = typecheck_expression(e->get_expression_1());
    Symbol t2 = typecheck_expression(e->get_expression_2());
    bool error = false;
    if (strcmp(t1->get_string(), Int->get_string()) != 0 || strcmp(t1->get_string(), Bool->get_string()) != 0 || strcmp(t1->get_string(), Str->get_string()) != 0) {
        if (strcmp(t1->get_string(), t2->get_string()) != 0) {
            error = true;
        }
    }
    if (strcmp(t2->get_string(), Int->get_string()) != 0 || strcmp(t2->get_string(), Bool->get_string()) != 0 || strcmp(t2->get_string(), Str->get_string()) != 0) {
        if (strcmp(t1->get_string(), t2->get_string()) != 0) {
            error = true;
        }
    }
    if (error == true) {
        ostream& err_stream = semant_error(e->get_root_class()->get_filename_1(), e);
        err_stream << "Illegal comparison with a basic type" << ".\n";
    }
    e->set_type(Bool);
    return Bool;
}

Symbol ClassTable::typecheck_leq(Expression e) {
    Symbol t1 = typecheck_expression(e->get_expression_1());
    Symbol t2 = typecheck_expression(e->get_expression_2());
    bool error = false;
    if (strcmp(t2->get_string(), Int->get_string()) != 0) {
        error = true;
    }
    if (strcmp(t1->get_string(), Int->get_string()) != 0) {
        error = true;
    }
    if (error == true) {
        ostream& err_stream = semant_error(e->get_root_class()->get_filename_1(), e);
        err_stream << "non-Int arguments " << t1->get_string() << " <= " << t2->get_string() << ".\n";
    }
    e->set_type(Bool);
    return Bool;
}

Symbol ClassTable::typecheck_neg(Expression e) {
    Symbol t = typecheck_expression(e->get_expression_1());
    if (strcmp(t->get_string(), Int->get_string()) != 0) {
        ostream& err_stream = semant_error(e->get_root_class()->get_filename_1(), e);
        err_stream << "Argument of '~' has type " << t->get_string() << " instead of Int" << ".\n";
    }
    e->set_type(Int);
    return Int;
}

Symbol ClassTable::typecheck_int_const(Expression e) {
    e->set_type(Int);
    return Int;
}

Symbol ClassTable::typecheck_bool_const(Expression e) {
    e->set_type(Bool);
    return Bool;
}

Symbol ClassTable::typecheck_string_const(Expression e) {
    e->set_type(Str);
    return Str;
}

Symbol ClassTable::typecheck_new_(Expression e) {
    Symbol type = e->get_var_type();
    if (defined_types->lookup(type->get_string()) == NULL) {
        e->set_type(Object);
        return Object;
    }
    e->set_type(type);
    return type;
}

Symbol ClassTable::typecheck_isvoid(Expression e) {
    Symbol type = typecheck_expression(e->get_expression_1());
    e->set_type(Bool);
    return Bool;
}

Symbol ClassTable::typecheck_no_expr(Expression e) {
    e->set_type(No_class);
    return No_class;
}

Symbol ClassTable::typecheck_object(Expression e) {
    Symbol type = e->get_variables_in_scope()->lookup(e->get_name());
    if (type == NULL) {
        e->set_type(Object);
        return Object;
    }
    if (defined_types->lookup(type->get_string()) == NULL) {
        e->set_type(Object);
        return Object;
    }
    if (strcmp(e->get_name()->get_string(), "self") == 0)
    {
        e->set_type(SELF_TYPE);
        return SELF_TYPE;
    }
    e->set_type(type);
    return type;
}






/* ***************************************************/
/*       Class Table Debug Helper methods            */
/*   *************************************************/

void ClassTable::print_class_names(Classes classes) {
    for (int i = classes->first(); classes->more(i); i = classes->next(i)) {
        dump_Symbol(cout, 0, classes->nth(i)->get_name());
        cout << "and now dump parent" << "\n";
        dump_Symbol(cout, 6, classes->nth(i)->get_parent());
    }
}

void ClassTable::check_equality(Classes classes) {
    for (int i = classes->first(); classes->more(i); i = classes->next(i)) {
        for (int j = classes->first(); classes->more(j); j = classes->next(j)) {
            if (j != i) {
                if (strcmp(classes->nth(i)->get_name()->get_string(), classes->nth(j)->get_name()->get_string()) == 0) {
                    //cout << classes->nth(i)get_name()->get_string() + "==" + classes->nth(j);
                }
            }
        }
    }
}
