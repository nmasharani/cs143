

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
    status += check_overriden_methods(classes_in_program);
    return status;
}

/**
* *****************************************************
* Ensures tha overriden methods conform to manual 
*       specification. 
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

    // curr_feature is the method that was inherited (ie the child method)
    // inherited_method_def is the method that is being redefined by curr_feature 
    if (!curr_feature->check_is_valid_method()) { status = 1; }
    Formals curr_formals = curr_feature->get_formals();
    Formals inherited_formals = inherited_method_def->get_formals();
    if (curr_formals->len() != inherited_formals->len()) {
        ostream& err_stream = semant_error(containing_class->get_filename_1(), curr_feature);
        err_stream << "Incompatible number of formal parameters in redefined method " 
            << curr_feature->get_name()->get_string() << ".\n";
        status = 1;
        curr_feature->is_not_valid_method();
    }
    if (status == 0) {
        for (int i = curr_formals->first(); curr_formals->more(i); i = curr_formals->next(i)) {
            Formal curr_formal = curr_formals->nth(i);
            Formal inherited_formal = inherited_formals->nth(i);
            if (strcmp(curr_formal->get_type()->get_string(), inherited_formal->get_type()->get_string()) != 0) {
                ostream& err_stream = semant_error(containing_class->get_filename_1(), curr_formal);
                err_stream << "In redefined method " << curr_feature->get_name()->get_string() << ", parameter '" 
                    << curr_formal->get_name()->get_string() <<"' of type " << curr_formal->get_type()->get_string() << " is different from original type " << inherited_formal->get_type()->get_string() << ".\n";
                status = 1;
                curr_feature->is_not_valid_method();
            }
        }
    }
    if (strcmp(curr_feature->get_type()->get_string(), inherited_method_def->get_type()->get_string()) != 0) {
        ostream& err_stream = semant_error(containing_class->get_filename_1(), curr_feature);
        err_stream << "In redefined method " << curr_feature->get_name()->get_string() << ", return type " << curr_feature->get_type()->get_string() << " is different from original return type " << inherited_method_def->get_type()->get_string() << ".\n";
        status = 1;
        curr_feature->is_not_valid_method();
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
*       of the same name. 
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
* Return 1 on error, 0 otherwise. 
* *****************************************************
*/
int ClassTable::check_for_main(Classes classes_in_program) {
    int status = 0;
    bool main_class_present = false;
    bool main_method_present = false;
    bool main_contains_params_printed = false;
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
                        if (curr_feature->get_formals()->len() > 0) {
                            if (main_contains_params_printed == false) {
                                ostream& err_stream = semant_error(curr_class->get_filename_1(), curr_feature);
                                err_stream << "'main' method in class " << curr_class->get_name()->get_string() << " should have no arguments.\n";
                                status = 1;
                            }   
                            main_contains_params_printed = true;
                        }
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
        //only check the non-rserved class names to avoid double reporting errors. 
        if (name_is_reserved_classname(curr_class->get_name()->get_string()) == false) {
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
int ClassTable::check_for_valid_inheritance(Classes classes, SymbolTable<char *, Entry>* defined_types) {
    int status = 0;
    for (int i = classes->first(); classes->more(i); i = classes->next(i)) {
        Class_ curr_class = classes->nth(i);
        Symbol parent = curr_class->get_parent();
        char* parent_name = parent->get_string();
        if (parent_is_forbidden(parent_name) == true) {
            ostream& err_stream = semant_error(curr_class);
            err_stream << "Class " << curr_class->get_name()->get_string() << " cannot inherit class " << parent_name << ".\n";
            status = 1;
        } else if (defined_types->probe(parent->get_string()) == NULL) {
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
SymbolTable<char *, Entry>* ClassTable::collect_all_valid_types(Classes classes) {
    SymbolTable<char *, Symbol>* defined_types = new SymbolTable<char *, Entry>();
    defined_types->enterscope();
    for (int i = classes->first(); classes->more(i); i = classes->next(i)) {
        Class_ curr_class = classes->nth(i);
        char* curr_class_name = curr_class->get_name()->get_string();
        if (name_is_reserved_classname(curr_class_name) == true) {
            ostream& err_stream = semant_error(curr_class);
            err_stream << "Redefinition of basic class " << curr_class_name << ".\n";
        } else if (defined_types->probe(curr_class->get_name()->get_string()) != NULL) {
            ostream& err_stream = semant_error(curr_class);
            err_stream << "Class " << curr_class_name << " was previously defined.\n";
        } else {
            defined_types->addid(curr_class_name, idtable.add_string(curr_class_name));
        }
    }
    defined_types->addid(Object->get_string(), Object));
    defined_types->addid(IO->get_string(), IO);
    defined_types->addid(Int->get_string(), Int);
    defined_types->addid(Bool->get_string(), Bool);
    defined_types->addid(Str->get_string(), Str);
    defined_types->addid(SELF_TYPE->get_string(), SELF_TYPE);
    return defined_types;
}

/**
* ***************************************************
* Returns true if the passed in name matches the 
*       class names that are reserved in COOL. 
* ***************************************************
*/
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
* Returns a class object who's name matches name. 
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
* Lookup the attribute in class who's name matches 
*       name. Note, have to ensure feature is a method
*       as methods and features can have same name. 
* ***************************************************
*/
Feature ClassTable::find_attribute_by_name(Class_ containing_class, char* name) {
    Features features = containing_class->get_features();
    for (int i = features->first(); features->more(i); i = features->next(i)) {
        Feature curr_feature = features->nth(i);
        if (strcmp(curr_feature->get_type_name(), "attribute") == 0) {
            if (strcmp(curr_feature->get_name()->get_string(), name) == 0) {
                return curr_feature;
            }
        }
    }
    return NULL;
}

////////////////////////////////////////////////////////////////////////////////
// 
// ClassTable::initialize_class_environment
// 
// This method adds all of the current variables in scope, as well as the vars
// in scope from parent classes, to the scope symboltable. Minor error checking
// for repeated attributes and poorly defined classes is done here as well.
// 
////////////////////////////////////////////////////////////////////////////////

SymbolTable<Symbol, Entry>* ClassTable::initialize_class_enviornment(Class_ curr_class) {
    SymbolTable<Symbol, Entry>* class_scope_variables = new SymbolTable<Symbol, Entry>();
    class_scope_variables->enterscope();

    Features features = curr_class->get_features();
    for (int i = features->first(); features->more(i); i = features->next(i)) {
        Feature curr_feature = features->nth(i);
        bool can_add = true;
        if (strcmp(curr_feature->get_type_name(), "attribute") == 0) {
            if (strcmp(curr_feature->get_name()->get_string(), "self") == 0) {
                ostream& err_stream = semant_error(curr_class->get_filename_1(), curr_feature);
                err_stream << "'self' cannot be the name of an attribute"  << ".\n";
                can_add = false;
            } 
            if (class_scope_variables->probe(curr_feature->get_name()) != NULL) {
                ostream& err_stream = semant_error(curr_class->get_filename_1(), curr_feature);
                err_stream << "Attribute " << curr_feature->get_name()->get_string() << " is multiply defined in class.\n";
                can_add = false;
            } 
            if (name_is_reserved_classname(curr_class->get_name()->get_string()) == false) {
                if (defined_types->lookup(curr_feature->get_type()->get_string()) == NULL) {
                    ostream& err_stream = semant_error(curr_class->get_filename_1(), curr_feature);
                    err_stream << "Class " << curr_feature->get_type()->get_string() << " of attribute " << curr_feature->get_name()->get_string() << " is undefined.\n";
                } 
            } 
            if (can_add == true) {
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
            bool can_add = true;
            if (strcmp(curr_feature->get_type_name(), "attribute") == 0) {
                if (class_scope_variables->probe(curr_feature->get_name()) != NULL) {
                    Feature duplicate_attr = find_attribute_by_name(curr_class, curr_feature->get_name()->get_string());
                    ostream& err_stream = semant_error(curr_class->get_filename_1(), duplicate_attr);
                    err_stream << "Attribute " << curr_feature->get_name()->get_string() << " is an attribute of an inherited class.\n";
                    can_add = false;
                } 
                if (strcmp(curr_feature->get_name()->get_string(), "self") == 0) {
                    can_add = false;
                }
                if (can_add == true) {
                    class_scope_variables->addid(curr_feature->get_name(), curr_feature->get_type());
                }
            }
        } 
    }
    class_scope_variables->addid(self, SELF_TYPE);

    return class_scope_variables;
}

////////////////////////////////////////////////////////////////////////////////
// 
// All of the following methods:
// 
// initialize_feature_environment
// initialize_formal
// initialize_expression
// initialize_case_environment
//
// serve the same purpose: they add the current class to every node in the AST.
// 
////////////////////////////////////////////////////////////////////////////////
void ClassTable::initialize_feature_enviornment(Class_ parent_class, Feature feature_to_init) {
    feature_to_init->set_root_class(parent_class->get_root_class());
    if (strcmp(feature_to_init->get_type_name(), "method") == 0) {
        Formals formals = feature_to_init->get_formals();
        for (int i = formals->first(); formals->more(i); i = formals->next(i)) {
            Formal curr_formal = formals->nth(i);
            initialize_formal(feature_to_init->get_root_class(), curr_formal);
        }
        initialize_expression(feature_to_init->get_root_class(), feature_to_init->get_expression());
    } else if (strcmp(feature_to_init->get_type_name(), "attribute") == 0) {
        initialize_expression(feature_to_init->get_root_class(), feature_to_init->get_expression());
    }
}

/**
* ***************************************************
* just need to add the formal to the table and then set the fields for the formal
* ***************************************************
*/
void ClassTable::initialize_formal(Class_ root_class, Formal formal_to_init) {
    formal_to_init->set_root_class(root_class);
}

void ClassTable::initialize_expression(Class_ root_class, Expression expression_to_init) {
    expression_to_init->set_root_class(root_class);

    /* Recurse case 0: Is void */
    if (strcmp(expression_to_init->get_type_name(), "isvoid") == 0) {
        initialize_expression(expression_to_init->get_root_class(), expression_to_init->get_expression_1());
        return;
    } 

    /* Recurse case 1: comp */
    if (strcmp(expression_to_init->get_type_name(), "comp") == 0) {
        initialize_expression(expression_to_init->get_root_class(), expression_to_init->get_expression_1());
        return;
    } 

    /* Recurse case 2: leq */
    if (strcmp(expression_to_init->get_type_name(), "leq") == 0) {
        initialize_expression(expression_to_init->get_root_class(), expression_to_init->get_expression_1());
        initialize_expression(expression_to_init->get_root_class(), expression_to_init->get_expression_2());
        return;
    } 

    /* Recurse case 3: eq */
    if (strcmp(expression_to_init->get_type_name(), "eq") == 0) {
        initialize_expression(expression_to_init->get_root_class(), expression_to_init->get_expression_1());
        initialize_expression(expression_to_init->get_root_class(), expression_to_init->get_expression_2());
        return;
    } 

    /* Recurse case 4: lt */
    if (strcmp(expression_to_init->get_type_name(), "lt") == 0) {
        initialize_expression(expression_to_init->get_root_class(), expression_to_init->get_expression_1());
        initialize_expression(expression_to_init->get_root_class(), expression_to_init->get_expression_2());
        return;
    } 

    /* Recurse case 5: neg */
    if (strcmp(expression_to_init->get_type_name(), "neg") == 0) {
        initialize_expression(expression_to_init->get_root_class(), expression_to_init->get_expression_1());
        return;
    } 

    /* Recurse case 5: divide */
    if (strcmp(expression_to_init->get_type_name(), "divide") == 0) {
        initialize_expression(expression_to_init->get_root_class(), expression_to_init->get_expression_1());
        initialize_expression(expression_to_init->get_root_class(), expression_to_init->get_expression_2());
        return;
    } 

    /* Recurse case 6: mul */
    if (strcmp(expression_to_init->get_type_name(), "mul") == 0) {
        initialize_expression(expression_to_init->get_root_class(), expression_to_init->get_expression_1());
        initialize_expression(expression_to_init->get_root_class(), expression_to_init->get_expression_2());
        return;
    } 

    /* Recurse case 7: sub */
    if (strcmp(expression_to_init->get_type_name(), "sub") == 0) {
        initialize_expression(expression_to_init->get_root_class(), expression_to_init->get_expression_1());
        initialize_expression(expression_to_init->get_root_class(), expression_to_init->get_expression_2());
        return;
    } 

    /* Recurse case 8: plus */
    if (strcmp(expression_to_init->get_type_name(), "plus") == 0) {
        initialize_expression(expression_to_init->get_root_class(), expression_to_init->get_expression_1());
        initialize_expression(expression_to_init->get_root_class(), expression_to_init->get_expression_2());
        return;
    } 

    /* Recurse case 9: block */
    if (strcmp(expression_to_init->get_type_name(), "block") == 0) {
        Expressions expressions = expression_to_init->get_expressions();
        for (int j = expressions->first(); expressions->more(j); j = expressions->next(j)) {
            Expression curr_expr = expressions->nth(j);
            initialize_expression(expression_to_init->get_root_class(), curr_expr);
        }
        return;
    } 

    /* Recurse case 10: loop */
    if (strcmp(expression_to_init->get_type_name(), "loop") == 0) {
        initialize_expression(expression_to_init->get_root_class(), expression_to_init->get_expression_1());
        initialize_expression(expression_to_init->get_root_class(), expression_to_init->get_expression_2());
        return;
    } 

    /* Recurse case 11: cond */
    if (strcmp(expression_to_init->get_type_name(), "cond") == 0) {
        initialize_expression(expression_to_init->get_root_class(), expression_to_init->get_expression_1());
        initialize_expression(expression_to_init->get_root_class(), expression_to_init->get_expression_2());
        initialize_expression(expression_to_init->get_root_class(), expression_to_init->get_expression_3());
        return;
    } 

     /* Recurse case 12:  dispatch */
    if (strcmp(expression_to_init->get_type_name(), "dispatch") == 0) {
        Expressions expressions = expression_to_init->get_expressions();
        for (int i = expressions->first(); expressions->more(i); i = expressions->next(i)) {
            initialize_expression(expression_to_init->get_root_class(), expressions->nth(i));
        }
        initialize_expression(expression_to_init->get_root_class(), expression_to_init->get_expression_1());
        return;
    } 

     /* Recurse case 13: static dispatch */
    if (strcmp(expression_to_init->get_type_name(), "static_dispatch") == 0) {
        Expressions expressions = expression_to_init->get_expressions();
        for (int i = expressions->first(); expressions->more(i); i = expressions->next(i)) {
            initialize_expression(expression_to_init->get_root_class(), expressions->nth(i));
        }
        initialize_expression(expression_to_init->get_root_class(), expression_to_init->get_expression_1());
        return;
    } 

     /* Recurse case 14: assign */
    if (strcmp(expression_to_init->get_type_name(), "assign") == 0) {
        initialize_expression(expression_to_init->get_root_class(), expression_to_init->get_expression_1());
        return;
    } 

    /* Recursive case with new scope 0: let statement */
    if (strcmp(expression_to_init->get_type_name(), "let") == 0) {
        initialize_expression(expression_to_init->get_root_class(), expression_to_init->get_expression_1());
        initialize_expression(expression_to_init->get_root_class(), expression_to_init->get_expression_2());
        return;
    } 

    /* Recursive case with new scope 1: case statement */
    if (strcmp(expression_to_init->get_type_name(), "typcase") == 0) {
        initialize_expression(expression_to_init->get_root_class(), expression_to_init->get_expression_1());
        Cases cases = expression_to_init->get_cases();
        SymbolTable<char*, int>* case_types_so_far = new SymbolTable<char*, int>();
        case_types_so_far->enterscope();
        for (int i = cases->first(); cases->more(i); i = cases->next(i)) {
            SymbolTable<Symbol, Entry>* variables_in_scope ;
            Case curr_case = cases->nth(i);
            initialize_case_enviornment(case_types_so_far, root_class, curr_case);
        }
        return;
    }
}

void ClassTable::initialize_case_enviornment(SymbolTable<char*, int>* case_types_so_far, Class_ root_class, Case curr_case) {
    curr_case->set_root_class(root_class);
    if (case_types_so_far->lookup(curr_case->get_type_decl()->get_string()) != NULL) {
        ostream& err_stream = semant_error(root_class->get_filename_1(), curr_case);
        err_stream << "Duplicate branch " << curr_case->get_type_decl()->get_string() << " in case statement.\n"; 
    } else {
        case_types_so_far->addid(curr_case->get_type_decl()->get_string(), new int(42));
    }
    initialize_expression(curr_case->get_root_class(), curr_case->get_expr());
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

////////////////////////////////////////////////////////////////////////////////
// 
// ClassTable::settup_typecheck_environment
//
// This method assigns a class environment to every node in the AST, so that
// every node always knows where it is, for things like SELF_TYPE.
// 
////////////////////////////////////////////////////////////////////////////////

void ClassTable::settup_typecheck_enviornment() {
    for (int i = program_classes_AST->first(); program_classes_AST->more(i); i = program_classes_AST->next(i)) {
        Class_ curr_class = program_classes_AST->nth(i);
        curr_class->set_root_class(curr_class);
        Features features = curr_class->get_features();
        for (int j = features->first(); features->more(j); j = features->next(j)) {
            Feature curr_feature = features->nth(j);
            initialize_feature_enviornment(curr_class, curr_feature);
        }
    }
}

////////////////////////////////////////////////////////////////////////////////
// 
// ClassTable::setup_inheritance_graph
//
// This method traverses the class list to get an inheritance graph-like structure
// that can easily be used for isparent and get_common_parent. This graph is 
// stored as an attribute of the ClassTable class. 
// 
////////////////////////////////////////////////////////////////////////////////

void ClassTable::setup_inheritance_graph() {
    inheritance_graph = new SymbolTable<Symbol, Entry>();
    inheritance_graph->enterscope();
    for (int i = program_classes_AST->first(); program_classes_AST->more(i); i = program_classes_AST->next(i)) {
        Class_ curr_class = program_classes_AST->nth(i);
        inheritance_graph->addid(curr_class->get_name(), curr_class->get_parent());
    }
}

////////////////////////////////////////////////////////////////////////////////
// 
// ClassTable::isparent
//
// In this method, we check if t1 is a parent of t2. 
// So, traverse upwards back from t2 until we reach t1 or the top of the
// inheritance tree
// 
// If we find that t1 is a parent of t2, that means t2 <= t1
//
////////////////////////////////////////////////////////////////////////////////
bool ClassTable::isparent(Symbol t1, Symbol t2, Class_ root_class) {

    // SELF_TYPE <= SELF_TYPE
    if (strcmp(t1->get_string(), SELF_TYPE->get_string()) == 0 && 
        strcmp(t2->get_string(), SELF_TYPE->get_string()) == 0) {
        t1 = root_class->get_name();
        t2 = root_class->get_name();
    }
    // SELF_TYPE <= t1
    else if (strcmp(t1->get_string(), SELF_TYPE->get_string()) != 0 && 
             strcmp(t2->get_string(), SELF_TYPE->get_string()) == 0) {
        t2 = root_class->get_name();
    }

    // t2 <= SELF_TYPE
    // INVALID: ALWAYS FALSE
    else if (strcmp(t1->get_string(), SELF_TYPE->get_string()) == 0 && 
             strcmp(t2->get_string(), SELF_TYPE->get_string()) != 0) {
        return false;
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

////////////////////////////////////////////////////////////////////////////////
// 
// ClassTable::get_common_parent
//
// This method finds the lub function, or the least upper bound, for two types.
// Essentially, we want to find the lowest parent class that these two types
// share, so we traverse backwards from the types until they meet or we reach
// Object. The current class is maintained for the sake of self_type checking.
//
////////////////////////////////////////////////////////////////////////////////

Symbol ClassTable::get_common_parent(Symbol t1, Symbol t2, Class_ root_class) {

    // lub(SELF_TYPE, SELF_TYPE) = SELF_TYPE
    if (strcmp(t1->get_string(), SELF_TYPE->get_string()) == 0 && 
        strcmp(t2->get_string(), SELF_TYPE->get_string()) == 0) {
        return SELF_TYPE;
    }

    // SELF_TYPE <= root_class, so lub(root_class, t) = lub(SELF_TYPE, t)
    if (strcmp(t1->get_string(), SELF_TYPE->get_string()) == 0) {
        t1 = root_class->get_name();
    }

    if (strcmp(t2->get_string(), SELF_TYPE->get_string()) == 0) {
        t2 = root_class->get_name();
    }

    if (!inheritance_graph->lookup(t1)) { return NULL; }
    if (!inheritance_graph->lookup(t2)) { return NULL; }

    // Traverse t2 upwards while t1 stays in the same place, until t2 can't go 
    // further up. Then move t1 up by one, and repeat until t1 can't go further
    // up. 
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

////////////////////////////////////////////////////////////////////////////////
// 
// ClassTable::typecheck_expression
//
// Since every expression type has a different set of typechecking rules, each 
// expression must go through this condtional to find its type, which has its
// own method.
//
////////////////////////////////////////////////////////////////////////////////

Symbol ClassTable::typecheck_expression(Expression e, SymbolTable<Symbol, Entry>* scope) {

    if (strcmp(e->get_type_name(), "assign") == 0) {
        return typecheck_assign(e, scope);
    }

    if (strcmp(e->get_type_name(), "static_dispatch") == 0) {
        return typecheck_static_dispatch(e, scope);
    }

    if (strcmp(e->get_type_name(), "dispatch") == 0) {
        return typecheck_dispatch(e, scope);
    }

    if (strcmp(e->get_type_name(), "cond") == 0) {
        return typecheck_cond(e, scope);
    }

    if (strcmp(e->get_type_name(), "loop") == 0) {
        return typecheck_loop(e, scope);
    }

    if (strcmp(e->get_type_name(), "typcase") == 0) {
        return typecheck_typcase(e, scope);
    }

    if (strcmp(e->get_type_name(), "block") == 0) {
        return typecheck_block(e, scope);
    }

    if (strcmp(e->get_type_name(), "let") == 0) {
        return typecheck_let(e, scope);
    }

    if (strcmp(e->get_type_name(), "plus") == 0) {
        return typecheck_plus(e, scope);
    }

    if (strcmp(e->get_type_name(), "sub") == 0) {
        return typecheck_sub(e, scope);
    }

    if (strcmp(e->get_type_name(), "mul") == 0) {
        return typecheck_mul(e, scope);
    }

    if (strcmp(e->get_type_name(), "divide") == 0) {
        return typecheck_divide(e, scope);
    }

    if (strcmp(e->get_type_name(), "neg") == 0) {
        return typecheck_neg(e, scope);
    }

    if (strcmp(e->get_type_name(), "lt") == 0) {
        return typecheck_lt(e, scope);
    }

    if (strcmp(e->get_type_name(), "eq") == 0) {
        return typecheck_eq(e, scope);
    }

    if (strcmp(e->get_type_name(), "leq") == 0) {
        return typecheck_leq(e, scope);
    }

    if (strcmp(e->get_type_name(), "comp") == 0) {
        return typecheck_comp(e, scope);
    }

    if (strcmp(e->get_type_name(), "int_const") == 0) {
        return typecheck_int_const(e, scope);
    }

    if (strcmp(e->get_type_name(), "bool_const") == 0) {
        return typecheck_bool_const(e, scope);
    }

    if (strcmp(e->get_type_name(), "string_const") == 0) {
        return typecheck_string_const(e, scope);
    }

    if (strcmp(e->get_type_name(), "new_") == 0) {
        return typecheck_new_(e, scope);
    }

    if (strcmp(e->get_type_name(), "isvoid") == 0) {
        return typecheck_isvoid(e, scope);
    }

    if (strcmp(e->get_type_name(), "no_expr") == 0) {
        return typecheck_no_expr(e, scope);
    }

    if (strcmp(e->get_type_name(), "object") == 0) {
        return typecheck_object(e, scope);
    }
    return Object;
}

////////////////////////////////////////////////////////////////////////////////
// 
// ClassTable::typecheck_method
//
// This method first checks to see that the method declaration is valid in type
// and in scope, and then recursively descends into the tree to complete 
// typechecking. 
//
////////////////////////////////////////////////////////////////////////////////

void ClassTable::typecheck_method(Feature method, SymbolTable<Symbol, Entry>* scope) {
    scope->enterscope();

    // get formals setup
    Symbol method_return_type = check_method_types(method, scope);
    Symbol method_body_type = typecheck_expression(method->get_expression(), scope);
    if (method_return_type == NULL) {
        scope->exitscope();
        return;
    }

    if (strcmp(method_body_type->get_string(), No_class->get_string()) == 0) {
        scope->exitscope();
        return;
    }

    if (isparent(method_return_type, method_body_type, method->get_root_class()) == false) {
        ostream& err_stream = semant_error(method->get_root_class()->get_filename_1(), method);
        err_stream << "Inferred return type " << method_body_type->get_string() << " of method " << method->get_name()->get_string() << " does not conform to declared return type " << method_return_type->get_string() <<".\n"; 
    }
    scope->exitscope();
}

////////////////////////////////////////////////////////////////////////////////
// 
// ClassTable::check_method_types
//
// This method ensures that the scope of formal parameters and the declarations
// of the parameters are valid. In this method, too, formal parameters are added
// to the scope symboltable, which entered a new scope at the start of the 
// typecheck_method method.
//
////////////////////////////////////////////////////////////////////////////////

Symbol ClassTable::check_method_types(Feature feature, SymbolTable<Symbol, Entry>* scope) {
    

    Formals formals = feature->get_formals();
    for (int k = formals->first(); formals->more(k); k = formals->next(k)) {
        Formal curr_formal = formals->nth(k);
        bool can_add = true;
        if (defined_types->lookup(curr_formal->get_type()->get_string()) == NULL) {
            ostream& err_stream = semant_error(feature->get_root_class()->get_filename_1(), feature);
            err_stream << "Class " << curr_formal->get_type()->get_string() << " of formal parameter " << curr_formal->get_name()->get_string() <<" is undefined.\n";
        } 

        if (strcmp(curr_formal->get_type()->get_string(), SELF_TYPE->get_string()) == 0) {
            ostream& err_stream = semant_error(feature->get_root_class()->get_filename_1(), curr_formal);
            err_stream << "Formal parameter " << curr_formal->get_name()->get_string() << " cannot have type SELF_TYPE" << ".\n";
        } 

        if (strcmp(curr_formal->get_name()->get_string(), "self") == 0) {
            ostream& err_stream = semant_error(feature->get_root_class()->get_filename_1(), curr_formal);
            err_stream << "'self' cannot be the name of a formal parameter" << ".\n";
            can_add = false;
        } 
        if (scope->probe(curr_formal->get_name()) && strcmp(curr_formal->get_name()->get_string(), "self") != 0) {
            ostream& err_stream = semant_error(feature->get_root_class()->get_filename_1(), curr_formal);
            err_stream << "Formal parameter " << curr_formal->get_name()->get_string() << " is multiply defined.\n";
        } else {
            if (can_add == true) {
                scope->addid(curr_formal->get_name(), curr_formal->get_type());
            }
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

////////////////////////////////////////////////////////////////////////////////
// 
// ClassTable::typecheck_attribute
//
// The validity of the type of the attribute declaration has already been 
// checked when the attribute was added to the current scope, so this method 
// simply checks that the initialization of the attribute (if it exists) is
// valid by recursively typechecking the attribute expression. 
//
////////////////////////////////////////////////////////////////////////////////

void ClassTable::typecheck_attribute(Feature attribute, SymbolTable<Symbol, Entry>* scope) {
    if (strcmp(attribute->get_expression()->get_type_name(), "no_expr") == 0) return;
    Symbol expression_type = typecheck_expression(attribute->get_expression(), scope);
    Symbol attribute_type = attribute->get_type();
    
    // See if the expression conforms to the declared type of the attribute.
    if (isparent(attribute_type, expression_type, attribute->get_root_class()) == false) {
        ostream& err_stream = semant_error(attribute->get_root_class()->get_filename_1(), attribute);
        err_stream << "Inferred type " << expression_type->get_string() << " of initialization of attribute " << attribute->get_name()->get_string() << " does not conform to declared type " << attribute_type->get_string() <<".\n"; 
    }
}

////////////////////////////////////////////////////////////////////////////////
// 
// ClassTable::typecheck_feature
//
// This method determines whether or not a feature should be checked as a method
// or as an attribute.
//
////////////////////////////////////////////////////////////////////////////////

void ClassTable::typecheck_feature(Feature feature,  SymbolTable<Symbol, Entry>* scope) {
    if (strcmp(feature->get_type_name(), "attribute") == 0) {
        typecheck_attribute(feature, scope);
    } else {
        typecheck_method(feature, scope);
    }
}


/**
* ***************************************************
* Tree roots are the classes. Start there and 
*       work up the tree, moving next to the features. 
* ***************************************************
*/

////////////////////////////////////////////////////////////////////////////////
// 
// ClassTable::typecheck_program
//
// This method begins the recursive typechecking. Typechecking in our semantic
// analyzer works as follows: First, the subtrees are recursively typechecked.
// Then, the current node is typechecked. 
//
////////////////////////////////////////////////////////////////////////////////
void ClassTable::typecheck_program() {
    for (int i = program_classes_AST->first(); program_classes_AST->more(i); i = program_classes_AST->next(i)) {
        Class_ curr_class = program_classes_AST->nth(i);

        // This method gets the attributes of the class plus the attributes of
        // the parent type of the current class. Since nothing in the current
        // class is in the scope of any other class, creating a new scope
        // symbol table here is okay. 
        SymbolTable<Symbol, Entry>* scope = initialize_class_enviornment(curr_class);

        Features features = curr_class->get_features();
        for (int j = features->first(); features->more(j); j = features->next(j)) {
            Feature curr_feature = features->nth(j);
            typecheck_feature(curr_feature, scope);
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
    ////////////////////////////////////////////////////////////////////////////
    // 
    // classtable constructor -- used for class checking (inheritance)
    //
    ////////////////////////////////////////////////////////////////////////////
    ClassTable *classtable = new ClassTable(classes);

    if (classtable->errors()) {
	   cerr << "Compilation halted due to static semantic errors." << endl;
	   exit(1);
    }

    ////////////////////////////////////////////////////////////////////////////
    // 
    // check_for_main -- used for checking the existence of a main function
    //
    ////////////////////////////////////////////////////////////////////////////

    int status = classtable->check_for_main(classtable->program_classes_AST); //status is currently unused.

    ////////////////////////////////////////////////////////////////////////////
    // 
    // validate methods -- used to check inheritance and parameters of methods
    //
    ////////////////////////////////////////////////////////////////////////////

    classtable->validate_methods(classtable->program_classes_AST);

    ////////////////////////////////////////////////////////////////////////////
    // 
    // settup_typecheck_environment -- used to add class context to AST nodes
    //
    ////////////////////////////////////////////////////////////////////////////

    classtable->settup_typecheck_enviornment();
    

    ////////////////////////////////////////////////////////////////////////////
    // 
    // typecheck_program -- typecheck program and check var scope
    //
    ////////////////////////////////////////////////////////////////////////////
    classtable->typecheck_program();

    if (classtable->errors()) {
       cerr << "Compilation halted due to static semantic errors." << endl;
       exit(1);
    }
}



////////////////////////////////////////////////////////////////////////////////
// 
// typecheck_assign
//
// To typecheck assignment:
// - The variable must be declared. 
// - The inferred type of the expression that is being assigned to the variable
//   must match the declared type of the variable. 
// - The return type of the assignment is the type of the expression being 
//   assigned.
//
////////////////////////////////////////////////////////////////////////////////

Symbol ClassTable::typecheck_assign(Expression e, SymbolTable<Symbol, Entry>* scope) {
    Symbol name_t = scope->lookup(e->get_name());
    Symbol expr_t = typecheck_expression(e->get_expression_1(), scope);
    // Make sure variable being assigned to is declared
    if (!name_t) {
        ostream& err_stream = semant_error(e->get_root_class()->get_filename_1(), e);
        err_stream << "Assignment to undeclared variable " << e->get_name()->get_string() << ".\n";
        e->set_type(Object);
        return Object;
    }

    // Make sure inferred return type conforms to declared type
    if (strcmp(e->get_name()->get_string(), "self") == 0) {
        ostream& err_stream = semant_error(e->get_root_class()->get_filename_1(), e);
        err_stream << "Cannot assign to 'self'." << endl;
    }

    if (!isparent(name_t, expr_t, e->get_root_class())) {
        ostream& err_stream = semant_error(e->get_root_class()->get_filename_1(), e);
        err_stream << "Type " << expr_t->get_string() << " of assigned expression does not conform to declared type "<< name_t->get_string() << " of identifier " << e->get_name()->get_string() << ".\n";
        e->set_type(Object);
        return Object;
    }
    e->set_type(defined_types->lookup(expr_t->get_string()));
    return expr_t;
}


////////////////////////////////////////////////////////////////////////////////
// 
// typecheck_static_dispatch
//
// To typecheck static dispatch:
// - The inferred type of the expression must conform to the declared type
// - The inferred types of the parameter expressions must conform to the declared types
// - The return type is the inferred type of the expression if the return type 
//   is declared as SELF_TYPE. Otherwise, the return type is the declared return type. 
//
////////////////////////////////////////////////////////////////////////////////

Symbol ClassTable::typecheck_static_dispatch(Expression e, SymbolTable<Symbol, Entry>* scope) {
    // typecheck all expressions recursively
    Symbol t0 = typecheck_expression(e->get_expression_1(), scope);
    Expressions params = e->get_expressions();
    int len = params->len();
    Symbol symbols_array [len];
    for (int i = params->first(); params->more(i); i = params->next(i)) {
        Expression curr_param = params->nth(i);
        symbols_array[i] = typecheck_expression(curr_param, scope);
    }

    // make sure the declared type of the dispatch is valid
    if (defined_types->lookup(e->get_var_type()->get_string()) == NULL) {
        ostream& err_stream = semant_error(e->get_root_class()->get_filename_1(), e);
        err_stream << "Static dispatch to undefined class " << e->get_var_type()->get_string() << ".\n";
        e->set_type(Object);
        return Object;
    }

    // make sure the declared type of the dispatch isn't self type
    if (strcmp(e->get_var_type()->get_string(), SELF_TYPE->get_string()) == 0) {
        ostream& err_stream = semant_error(e->get_root_class()->get_filename_1(), e);
        err_stream << "Static dispatch to SELF_TYPE" << ".\n";
        e->set_type(Object);
        return Object;
    }

    // make sure the inferred type conforms to the declared type
    if (isparent(e->get_var_type(), t0, e->get_root_class()) == false) {
        ostream& err_stream = semant_error(e->get_root_class()->get_filename_1(), e);
        err_stream << "Expression type " << t0->get_string() << " does not conform to declared static dispatch type " << e->get_var_type()->get_string() << ".\n";
    }

    // make sure the method name is defined
    Class_ t_class = find_class_by_name(program_classes_AST, e->get_var_type()->get_string());
    Feature method_def = find_method_by_name(t_class, e->get_name()->get_string());
    if (method_def == NULL || !method_def->check_is_valid_method()) {
        method_def = search_for_inherited_method_def(t_class, e->get_name()->get_string(), program_classes_AST);
        if (method_def == NULL || !method_def->check_is_valid_method()) {
            ostream& err_stream = semant_error(e->get_root_class()->get_filename_1(), e);
            err_stream << "Static dispatch to undefined method " << e->get_name()->get_string() << ".\n";
            e->set_type(Object);
            return Object;
        }
    }

    // make sure the number of arguments is correct
    Formals method_def_formals = method_def->get_formals();
    if (len != method_def_formals->len()) {
        ostream& err_stream = semant_error(e->get_root_class()->get_filename_1(), e);
        err_stream << "Method " << e->get_name()->get_string() << " invoked with wrong number of arguments.\n";
        e->set_type(Object);
        return Object;
    } 

    // make sure the order/type of arguments is correct
    bool error = false;
    for (int i = method_def_formals->first(); method_def_formals->more(i); i = method_def_formals->next(i)) {
        Symbol curr_type = method_def_formals->nth(i)->get_type();
        if (isparent(curr_type, symbols_array[i], e->get_root_class()) == false) {
            ostream& err_stream = semant_error(e->get_root_class()->get_filename_1(), e);
            err_stream << "In call of method " << e->get_name()->get_string() << ", type " << symbols_array[i]->get_string() << " of parameter " << method_def_formals->nth(i)->get_name()->get_string() << " does not conform to declared type " << curr_type->get_string() << ".\n";
            error = true;
        }
    }

    // make sure the declared return type is defined
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

    // if the return type is self type, return the inferred type of the calling expr.
    if (strcmp(return_type->get_string(), "SELF_TYPE") == 0) {
        e->set_type(defined_types->lookup(t0->get_string()));
        return t0;
    }
    e->set_type(defined_types->lookup(return_type->get_string()));
    return return_type;
}

////////////////////////////////////////////////////////////////////////////////
// 
// typecheck_dispatch
//
// To typecheck dispatch:
// - The inferred types of the parameter expressions must conform to the declared types
// - The return type is the inferred type of the expression if the return type 
//   is declared as SELF_TYPE. Otherwise, the return type is the declared return type. 
//
////////////////////////////////////////////////////////////////////////////////

Symbol ClassTable::typecheck_dispatch(Expression e, SymbolTable<Symbol, Entry>* scope) {
    // typecheck expressions recursively
    Symbol t0 = typecheck_expression(e->get_expression_1(), scope);
    Expressions params = e->get_expressions();
    int len = params->len();
    Symbol symbols_array [len];
    for (int i = params->first(); params->more(i); i = params->next(i)) {
        Expression curr_param = params->nth(i);
        symbols_array[i] = typecheck_expression(curr_param, scope);
    }

    // if the type of the current expression is SELF_TYPE, set it to the type
    // of the class we're still in
    if (strcmp(t0->get_string(), "SELF_TYPE") == 0) {
        t0 = e->get_root_class()->get_name();
    }

    // make sure that the method is valid
    Class_ t_class = find_class_by_name(program_classes_AST, t0->get_string());
    Feature method_def = find_method_by_name(t_class, e->get_name()->get_string());
    if (method_def == NULL || !method_def->check_is_valid_method()) {
        method_def = search_for_inherited_method_def(t_class, e->get_name()->get_string(), program_classes_AST);
        if (method_def == NULL || !method_def->check_is_valid_method()) {
            ostream& err_stream = semant_error(e->get_root_class()->get_filename_1(), e);
            err_stream << "Dispatch to undefined method " << e->get_name()->get_string() << ".\n";
            e->set_type(Object);
            return Object;
        }
    }

    // make sure the number of params is correct
    Formals method_def_formals = method_def->get_formals();
    if (len != method_def_formals->len()) {
        ostream& err_stream = semant_error(e->get_root_class()->get_filename_1(), e);
        err_stream << "Method " << e->get_name()->get_string() << " called with wrong number of arguments.\n";
        e->set_type(Object);
        return Object;
    } 

    // make sure the types of the params match
    bool error = false;
    for (int i = method_def_formals->first(); method_def_formals->more(i); i = method_def_formals->next(i)) {
        Symbol curr_type = method_def_formals->nth(i)->get_type();
        if (isparent(curr_type, symbols_array[i], e->get_root_class()) == false) {
            ostream& err_stream = semant_error(e->get_root_class()->get_filename_1(), e);
            err_stream << "In call of method " << e->get_name()->get_string() << ", type " << symbols_array[i]->get_string() << " of parameter " << method_def_formals->nth(i)->get_name()->get_string() << " does not conform to declared type " << curr_type->get_string() << ".\n";
            //error = true;
            //note if formal types are different, the reference compiler does not return Object, but the return type of the method.
        }
    }

    // make sure the return type is valid
    Symbol return_type = method_def->get_type();
    if (defined_types->lookup(return_type->get_string()) == NULL) {
        //printed in typechecking of method defs. 
        error = true;
    }
    if (error == true) {
        e->set_type(Object);
        return Object;
    }
    if (strcmp(return_type->get_string(), "SELF_TYPE") == 0) {
        e->set_type(defined_types->lookup(t0->get_string()));
        return t0;
    }
    e->set_type(defined_types->lookup(return_type->get_string()));
    return return_type;
}

////////////////////////////////////////////////////////////////////////////////
// 
// typecheck_cond
//
// To typecheck conditional statements:
// - The inferred type of the predicate must be bool
// - The return type is the least common parent type of the types of the
//   then statement and the else statement. 
//
////////////////////////////////////////////////////////////////////////////////

Symbol ClassTable::typecheck_cond(Expression e, SymbolTable<Symbol, Entry>* scope) {
    Symbol pred_t = typecheck_expression(e->get_expression_1(), scope);
    bool error = false;

    // Make sure the predicate is a bool
    if (strcmp(pred_t->get_string(), "Bool") != 0) {
        ostream& err_stream = semant_error(e->get_root_class()->get_filename_1(), e);
        err_stream << "Predicate of 'if' does not have type Bool." << endl;
        error = true;
    }
    Symbol then_t = typecheck_expression(e->get_expression_2(), scope);
    Symbol else_t = typecheck_expression(e->get_expression_3(), scope);
    if (error == true) {
        e->set_type(Object);
        return Object;
    }

    // Get the common parent
    Symbol common_parent = get_common_parent(then_t, else_t, e->get_root_class());
    e->set_type(defined_types->lookup(common_parent->get_string()));
    return common_parent;
}

////////////////////////////////////////////////////////////////////////////////
// 
// typecheck_loop
//
// To typecheck loop statements:
// - The inferred type of the predicate must be bool
// - The Static return type of the loop is Object, manual page 11
//
////////////////////////////////////////////////////////////////////////////////

Symbol ClassTable::typecheck_loop(Expression e, SymbolTable<Symbol, Entry>* scope) {
    // typecheck recursively
    Symbol predicate_type = typecheck_expression(e->get_expression_1(), scope);
    Symbol body_type = typecheck_expression(e->get_expression_2(), scope);
    // pred must be of type bool
    if (strcmp(predicate_type->get_string(), "Bool") != 0 ) {
        ostream& err_stream = semant_error(e->get_root_class()->get_filename_1(), e);
        err_stream << "Loop condition does not have type Bool." << endl;
    }
    e->set_type(Object);
    return Object;
}

////////////////////////////////////////////////////////////////////////////////
// 
// typecheck_typcase
//
// To typecheck case statements:
// - Typecheck the predicate
// - Typecheck the expressions being loaded by the case stmt
// - Return type is the common parent of all of the types of the case expressions
//
////////////////////////////////////////////////////////////////////////////////

Symbol ClassTable::typecheck_typcase(Expression e, SymbolTable<Symbol, Entry>* scope) {
    Symbol case_predicate_type = typecheck_expression(e->get_expression_1(), scope);
    Cases cases = e->get_cases();
    Symbol case_types [cases->len()];
    for (int i = cases->first(); cases->more(i); i = cases->next(i)) {
        Case curr_case = cases->nth(i);
        scope->enterscope();
        bool error = false;
        // Error for undefined type
        if (defined_types->lookup(curr_case->get_type_decl()->get_string()) == NULL) {
            ostream& err_stream = semant_error(e->get_root_class()->get_filename_1(), curr_case);
            err_stream << "Class " << curr_case->get_type_decl()->get_string() << " of case branch is undefined." << endl;
            //error = true;
        }
        // No self_type in cases
        if (strcmp(curr_case->get_name()->get_string(), "self") == 0) {
            ostream& err_stream = semant_error(e->get_root_class()->get_filename_1(), curr_case);
            err_stream << "'self' bound in 'case'." << endl;
            error = true;
        }
        if (strcmp(curr_case->get_type_decl()->get_string(), SELF_TYPE->get_string()) == 0) {
            ostream& err_stream = semant_error(e->get_root_class()->get_filename_1(), curr_case);
            err_stream << "Identifier " << curr_case->get_name()->get_string() << " declared with type SELF_TYPE in case branch." << endl;
            //error = true;
        }

        if (!error) {
            scope->addid(curr_case->get_name(), curr_case->get_type_decl());
        }

        case_types[i] = typecheck_expression(curr_case->get_expr(), scope);
        scope->exitscope();
    }

    // Get the comon parent of all of the case expr types
    Symbol highest_parent = case_types[0];
    for (int i = 1; i < cases->len(); i++) {
        highest_parent = get_common_parent(highest_parent, case_types[i], e->get_root_class());
    }
    e->set_type(defined_types->lookup(highest_parent->get_string()));
    return highest_parent;
}

////////////////////////////////////////////////////////////////////////////////
// 
// typecheck_block
//
// To typecheck block statements:
// - Typecheck all expressions
// - return type is the type of the last expression
// - continually update return symbol so it contains the last value, 
//    and return that. 
// - every block has at least one expression is caught in the PA2 component. 
//
////////////////////////////////////////////////////////////////////////////////

Symbol ClassTable::typecheck_block(Expression e, SymbolTable<Symbol, Entry>* scope) {
    Expressions expressions = e->get_expressions();
    Symbol return_symbol; 
    for (int i = expressions->first(); expressions->more(i); i = expressions->next(i)) {
        return_symbol = typecheck_expression(expressions->nth(i), scope);
    }
    e->set_type(defined_types->lookup(return_symbol->get_string()));
    return return_symbol;
}

////////////////////////////////////////////////////////////////////////////////
// 
// typecheck_let
//
// To typecheck let statements:
// - If there is an initialization, the type must conform to declared type
// - Return the type of the let statemnet body
//
////////////////////////////////////////////////////////////////////////////////

Symbol ClassTable::typecheck_let(Expression e, SymbolTable<Symbol, Entry>* scope) {
    scope->enterscope();
    Symbol t0 = e->get_var_type();

    // if there is an initialization, check conformation
    Symbol init_type = typecheck_expression(e->get_expression_1(), scope);

    if (defined_types->lookup(e->get_var_type()->get_string()) == NULL) {
        ostream& err_stream = semant_error(e->get_root_class()->get_filename_1(), e);
        err_stream << "Class " << e->get_var_type()->get_string() << " of let-bound identifier " << e->get_name()->get_string() << " is undefined.\n";
    }
    if (strcmp(init_type->get_string(), "_no_class") != 0) {
        // init type must conform with declared type
        if (isparent(t0, init_type, e->get_root_class()) == false) {
            ostream& err_stream = semant_error(e->get_root_class()->get_filename_1(), e);
            err_stream << "Inferred type " << init_type->get_string() << " of initialization of " << e->get_name()->get_string() << " does not conform to identifier's declared type " << t0->get_string() << ".\n";
        }
    }
    if (strcmp(e->get_name()->get_string(), "self") == 0) {
        ostream& err_stream = semant_error(e->get_root_class()->get_filename_1(), e);
        err_stream << "'self' cannot be bound in a 'let' expression" << ".\n";
    } else {
        scope->addid(e->get_name(), e->get_var_type());
    }

    // the return type is the type of the body of the let stmt
    Symbol return_type = typecheck_expression(e->get_expression_2(), scope);
    e->set_type(defined_types->lookup(return_type->get_string()));
    scope->exitscope();
    return return_type;
}

////////////////////////////////////////////////////////////////////////////////
// 
// typecheck_plus
//
// To typecheck arithmatic statements:
// - Both expressions must be int
// - Return type must be int
//
////////////////////////////////////////////////////////////////////////////////

Symbol ClassTable::typecheck_plus(Expression e, SymbolTable<Symbol, Entry>* scope) {
    Symbol t1 = typecheck_expression(e->get_expression_1(), scope);
    Symbol t2 = typecheck_expression(e->get_expression_2(), scope);
    bool error = false;
    if (strcmp(t2->get_string(), Int->get_string()) != 0) {
        error = true;
    }
    if (strcmp(t1->get_string(), Int->get_string()) != 0) {
        error = true;
    }
    if (error == true) {
        ostream& err_stream = semant_error(e->get_root_class()->get_filename_1(), e);
        err_stream << "non-Int arguments: " << t1->get_string() << " + " << t2->get_string() << "\n";
    }
    e->set_type(Int);
    return Int;
}

////////////////////////////////////////////////////////////////////////////////
// 
// typecheck_sub
//
// To typecheck arithmatic statements:
// - Both expressions must be int
// - Return type must be int
//
////////////////////////////////////////////////////////////////////////////////

Symbol ClassTable::typecheck_sub(Expression e, SymbolTable<Symbol, Entry>* scope) {
    Symbol t1 = typecheck_expression(e->get_expression_1(), scope);
    Symbol t2 = typecheck_expression(e->get_expression_2(), scope);
    bool error = false;
    if (strcmp(t2->get_string(), Int->get_string()) != 0) {
        error = true;
    }
    if (strcmp(t1->get_string(), Int->get_string()) != 0) {
        error = true;
    }
    if (error == true) {
        ostream& err_stream = semant_error(e->get_root_class()->get_filename_1(), e);
        err_stream << "non-Int arguments: " << t1->get_string() << " - " << t2->get_string() << "\n";
    }
    e->set_type(Int);
    return Int;
}

////////////////////////////////////////////////////////////////////////////////
// 
// typecheck_mul
//
// To typecheck arithmatic statements:
// - Both expressions must be int
// - Return type must be int
//
////////////////////////////////////////////////////////////////////////////////

Symbol ClassTable::typecheck_mul(Expression e, SymbolTable<Symbol, Entry>* scope) {
    Symbol t1 = typecheck_expression(e->get_expression_1(), scope);
    Symbol t2 = typecheck_expression(e->get_expression_2(), scope);
    bool error = false;
    if (strcmp(t2->get_string(), Int->get_string()) != 0) {
        error = true;
    }
    if (strcmp(t1->get_string(), Int->get_string()) != 0) {
        error = true;
    }
    if (error == true) {
        ostream& err_stream = semant_error(e->get_root_class()->get_filename_1(), e);
        err_stream << "non-Int arguments: " << t1->get_string() << " * " << t2->get_string() << "\n";
    }
    e->set_type(Int);
    return Int;
}

////////////////////////////////////////////////////////////////////////////////
// 
// typecheck_divide
//
// To typecheck arithmatic statements:
// - Both expressions must be int
// - Return type must be int
//
////////////////////////////////////////////////////////////////////////////////

Symbol ClassTable::typecheck_divide(Expression e, SymbolTable<Symbol, Entry>* scope) {
    Symbol t1 = typecheck_expression(e->get_expression_1(), scope);
    Symbol t2 = typecheck_expression(e->get_expression_2(), scope);
    bool error = false;
    if (strcmp(t2->get_string(), Int->get_string()) != 0) {
        error = true;
    }
    if (strcmp(t1->get_string(), Int->get_string()) != 0) {
        error = true;
    }
    if (error == true) {
        ostream& err_stream = semant_error(e->get_root_class()->get_filename_1(), e);
        err_stream << "non-Int arguments: " << t1->get_string() << " / " << t2->get_string() << "\n";
    }
    e->set_type(Int);
    return Int;
}

////////////////////////////////////////////////////////////////////////////////
// 
// typecheck_comp
//
// To typecheck not statements:
// - Expression must have type Bool
// - Return type must be Bool
//
////////////////////////////////////////////////////////////////////////////////

Symbol ClassTable::typecheck_comp(Expression e, SymbolTable<Symbol, Entry>* scope) {
    Symbol t1 = typecheck_expression(e->get_expression_1(), scope);
    if (strcmp(t1->get_string(), Bool->get_string()) != 0) {
        ostream& err_stream = semant_error(e->get_root_class()->get_filename_1(), e);
        err_stream << "Argument of 'not' has type " << t1->get_string() << " instead of Bool.\n";
    }
    e->set_type(Bool);
    return Bool;
}

////////////////////////////////////////////////////////////////////////////////
// 
// typecheck_lt
//
// To typecheck lt statements:
// - Both expressions must be int
// - Return type must be bool
//
////////////////////////////////////////////////////////////////////////////////

Symbol ClassTable::typecheck_lt(Expression e, SymbolTable<Symbol, Entry>* scope) {
    Symbol t1 = typecheck_expression(e->get_expression_1(), scope);
    Symbol t2 = typecheck_expression(e->get_expression_2(), scope);
    bool error = false;
    if (strcmp(t2->get_string(), Int->get_string()) != 0) {
        error = true;
    }
    if (strcmp(t1->get_string(), Int->get_string()) != 0) {
        error = true;
    }
    if (error == true) {
        ostream& err_stream = semant_error(e->get_root_class()->get_filename_1(), e);
        err_stream << "non-Int arguments: " << t1->get_string() << " < " << t2->get_string() << "\n";
    }
    e->set_type(Bool);
    return Bool;
}

////////////////////////////////////////////////////////////////////////////////
// 
// typecheck_eq
//
// To typecheck eq statements:
// - If the types of the expressions are {Bool, Int, String}, they have to be the same type
// - Return type must be bool
//
////////////////////////////////////////////////////////////////////////////////

Symbol ClassTable::typecheck_eq(Expression e, SymbolTable<Symbol, Entry>* scope) {
    Symbol t1 = typecheck_expression(e->get_expression_1(), scope);
    Symbol t2 = typecheck_expression(e->get_expression_2(), scope);
    bool error = false;
    if (strcmp(t1->get_string(), Int->get_string()) == 0 || 
        strcmp(t1->get_string(), Bool->get_string()) == 0 || 
        strcmp(t1->get_string(), Str->get_string()) == 0) {
        if (strcmp(t1->get_string(), t2->get_string()) != 0) {
            error = true;
        }
    }
    if (strcmp(t2->get_string(), Int->get_string()) == 0 || 
        strcmp(t2->get_string(), Bool->get_string()) == 0 || 
        strcmp(t2->get_string(), Str->get_string()) == 0) {
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

////////////////////////////////////////////////////////////////////////////////
// 
// typecheck_leq
//
// To typecheck leq statements:
// - Both expressions must be int
// - Return type must be bool
//
////////////////////////////////////////////////////////////////////////////////

Symbol ClassTable::typecheck_leq(Expression e, SymbolTable<Symbol, Entry>* scope) {
    Symbol t1 = typecheck_expression(e->get_expression_1(), scope);
    Symbol t2 = typecheck_expression(e->get_expression_2(), scope);
    bool error = false;
    if (strcmp(t2->get_string(), Int->get_string()) != 0) {
        error = true;
    }
    if (strcmp(t1->get_string(), Int->get_string()) != 0) {
        error = true;
    }
    if (error == true) {
        ostream& err_stream = semant_error(e->get_root_class()->get_filename_1(), e);
        err_stream << "non-Int arguments: " << t1->get_string() << " <= " << t2->get_string() << "\n";
    }
    e->set_type(Bool);
    return Bool;
}

////////////////////////////////////////////////////////////////////////////////
// 
// typecheck_neg
//
// To typecheck neg statements:
// - Expression must be int
// - Return type must be int
//
////////////////////////////////////////////////////////////////////////////////

Symbol ClassTable::typecheck_neg(Expression e, SymbolTable<Symbol, Entry>* scope) {
    Symbol t = typecheck_expression(e->get_expression_1(), scope);
    if (strcmp(t->get_string(), Int->get_string()) != 0) {
        ostream& err_stream = semant_error(e->get_root_class()->get_filename_1(), e);
        err_stream << "Argument of '~' has type " << t->get_string() << " instead of Int" << ".\n";
    }
    e->set_type(Int);
    return Int;
}

Symbol ClassTable::typecheck_int_const(Expression e, SymbolTable<Symbol, Entry>* scope) {
    e->set_type(Int);
    return Int;
}

Symbol ClassTable::typecheck_bool_const(Expression e, SymbolTable<Symbol, Entry>* scope) {
    e->set_type(Bool);
    return Bool;
}

Symbol ClassTable::typecheck_string_const(Expression e, SymbolTable<Symbol, Entry>* scope) {
    e->set_type(Str);
    return Str;
}

////////////////////////////////////////////////////////////////////////////////
// 
// typecheck_new
//
// To typecheck new statements:
// - type must be valid, if not return object
//
////////////////////////////////////////////////////////////////////////////////

Symbol ClassTable::typecheck_new_(Expression e, SymbolTable<Symbol, Entry>* scope) {
    Symbol type = e->get_var_type();
    if (defined_types->lookup(type->get_string()) == NULL) {
        ostream& err_stream = semant_error(e->get_root_class()->get_filename_1(), e);
        err_stream << "'new' used with undefined class " << e->get_var_type()->get_string() << ".\n";
        e->set_type(Object);
        return Object;
    }
    e->set_type(defined_types->lookup(type->get_string()));
    return type;
}

Symbol ClassTable::typecheck_isvoid(Expression e, SymbolTable<Symbol, Entry>* scope) {
    Symbol type = typecheck_expression(e->get_expression_1(), scope);
    e->set_type(Bool);
    return Bool;
}

Symbol ClassTable::typecheck_no_expr(Expression e, SymbolTable<Symbol, Entry>* scope) {
    e->set_type(No_type);
    return No_class;
}

Symbol ClassTable::typecheck_object(Expression e, SymbolTable<Symbol, Entry>* scope) {
    Symbol type = scope->lookup(e->get_name());
    if (type == NULL) {
        ostream& err_stream = semant_error(e->get_root_class()->get_filename_1(), e);
        err_stream << "Undeclared identifier " << e->get_name()->get_string() << ".\n";
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
    e->set_type(defined_types->lookup(type->get_string()));
    return type;
}


/* ***************************************************/
/*       Class Table Debug Helper methods            */
/*   *************************************************/

void ClassTable::print_class_names(Classes classes) {
    for (int i = classes->first(); classes->more(i); i = classes->next(i)) {
        // dump_Symbol(cout, 0, classes->nth(i)->get_name());
        // cout << "and now dump parent" << "\n";
        // dump_Symbol(cout, 6, classes->nth(i)->get_parent());
    }
}

void ClassTable::check_equality(Classes classes) {
    for (int i = classes->first(); classes->more(i); i = classes->next(i)) {
        for (int j = classes->first(); classes->more(j); j = classes->next(j)) {
            if (j != i) {
                if (strcmp(classes->nth(i)->get_name()->get_string(), classes->nth(j)->get_name()->get_string()) == 0) {
                    // cout << classes->nth(i)get_name()->get_string() + "==" + classes->nth(j);
                }
            }
        }
    }
}
