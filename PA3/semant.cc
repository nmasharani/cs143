

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

    //arrange the list of classes in order of inheritance. 
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

    //check_naming_and_scope();



    //typecheck
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










































































/* Recursively evaluate the expressions */
/* Base cases are the leaves of the tree. These are: */
/*      - int literal, string literal, no_expr(), Bool_const, Object ... (MORE ?) */
void program_class::evaluate_expressions(SymbolTable<Symbol, Entry>& scopes, Expression expr) {

    /* Base case 0: expr is an Object expression */
    if (strcmp(expr->get_type_name(), "object") == 0) {
        /* check if the object is in the symbol table. If it is, we are happy, otherwise, error */
        if (scopes.lookup(expr->get_name()) == NULL){
            cerr << "TO DO: Add filename" << ":" << expr->get_line_number() << ": ";
            cerr << "Undeclared identifier " << expr->get_name()->get_string() << endl;
        }
        return; 
    }

    /* Base case 1: No expression */
    if (strcmp(expr->get_type_name(), "no_expr") == 0) return; 

    /* Base case 2: new */
    if (strcmp(expr->get_type_name(), "new_") == 0) return; 

    /* Base case 3: string_const */
    if (strcmp(expr->get_type_name(), "string_const") == 0) return; 

    /* Base case 4: Bool_const */
    if (strcmp(expr->get_type_name(), "bool_const") == 0) return; 

    /* Base case 5: Int const */
    if (strcmp(expr->get_type_name(), "int_const") == 0) return; 

    /* Recurse case 0: Is void */
    if (strcmp(expr->get_type_name(), "isvoid") == 0) {
        evaluate_expressions(scopes, expr->get_expression_1());
        return;
    } 

    /* Recurse case 1: comp */
    if (strcmp(expr->get_type_name(), "comp") == 0) {
        evaluate_expressions(scopes, expr->get_expression_1());
        return;
    } 

    /* Recurse case 2: leq */
    if (strcmp(expr->get_type_name(), "leq") == 0) {
        evaluate_expressions(scopes, expr->get_expression_1());
        evaluate_expressions(scopes, expr->get_expression_2());
        return;
    } 

    /* Recurse case 3: eq */
    if (strcmp(expr->get_type_name(), "eq") == 0) {
        evaluate_expressions(scopes, expr->get_expression_1());
        evaluate_expressions(scopes, expr->get_expression_2());
        return;
    } 

    /* Recurse case 4: lt */
    if (strcmp(expr->get_type_name(), "lt") == 0) {
        evaluate_expressions(scopes, expr->get_expression_1());
        evaluate_expressions(scopes, expr->get_expression_2());
        return;
    } 

    /* Recurse case 5: divide */
    if (strcmp(expr->get_type_name(), "divide") == 0) {
        evaluate_expressions(scopes, expr->get_expression_1());
        evaluate_expressions(scopes, expr->get_expression_2());
        return;
    } 

    /* Recurse case 6: mul */
    if (strcmp(expr->get_type_name(), "mul") == 0) {
        evaluate_expressions(scopes, expr->get_expression_1());
        evaluate_expressions(scopes, expr->get_expression_2());
        return;
    } 

    /* Recurse case 7: sub */
    if (strcmp(expr->get_type_name(), "sub") == 0) {
        evaluate_expressions(scopes, expr->get_expression_1());
        evaluate_expressions(scopes, expr->get_expression_2());
        return;
    } 

    /* Recurse case 8: plus */
    if (strcmp(expr->get_type_name(), "plus") == 0) {
        evaluate_expressions(scopes, expr->get_expression_1());
        evaluate_expressions(scopes, expr->get_expression_2());
        return;
    } 

    /* Recurse case 9: block */
    if (strcmp(expr->get_type_name(), "block") == 0) {
        Expressions expressions = expr->get_expressions();
        for (int j = expressions->first(); expressions->more(j); j = expressions->next(j)) {
            Expression curr_expr = expressions->nth(j);
            evaluate_expressions(scopes, curr_expr);
        }
        return;
    } 

    /* Recurse case 10: loop */
    if (strcmp(expr->get_type_name(), "loop") == 0) {
        evaluate_expressions(scopes, expr->get_expression_1());
        evaluate_expressions(scopes, expr->get_expression_2());
        return;
    } 

    /* Recurse case 11: cond */
    if (strcmp(expr->get_type_name(), "cond") == 0) {
        evaluate_expressions(scopes, expr->get_expression_1());
        evaluate_expressions(scopes, expr->get_expression_2());
        evaluate_expressions(scopes, expr->get_expression_3());
        return;
    } 

     /* Recurse case 12: dispatch */
    if (strcmp(expr->get_type_name(), "dispatch") == 0) {
        evaluate_expressions(scopes, expr->get_expression_1());
        evaluate_expressions(scopes, expr->get_expression_2());
        return;
    } 

     /* Recurse case 13: static dispatch */
    if (strcmp(expr->get_type_name(), "static_dispatch") == 0) {
        evaluate_expressions(scopes, expr->get_expression_1());
        evaluate_expressions(scopes, expr->get_expression_2());
        return;
    } 

     /* Recurse case 14: assign */
    if (strcmp(expr->get_type_name(), "assign") == 0) {
        if (scopes.lookup(expr->get_name()) == NULL) {
            cerr << "TO DO: Add filename" << ":" << expr->get_line_number() << ": ";
            cerr << "Undeclared identifier " << expr->get_name()->get_string() << endl;
        }
        evaluate_expressions(scopes, expr->get_expression_1());
        return;
    } 

    /* Recursive case with new scope 0: let statement */
    if (strcmp(expr->get_type_name(), "let") == 0) {
        scopes.enterscope();
        scopes.addid(expr->get_name(), expr->get_var_type());
        evaluate_expressions(scopes, expr->get_expression_1());
        evaluate_expressions(scopes, expr->get_expression_2());
        scopes.exitscope();
        return;
    } 

    /* Recursive case with new scope 1: case statement */
    if (strcmp(expr->get_type_name(), "typcase") == 0) {
        evaluate_expressions(scopes, expr->get_expression_1());
        Cases cases = expr->get_cases();
        for (int i = cases->first(); cases->more(i); i = cases->next(i)) {
            Case curr_case = cases->nth(i);
            scopes.enterscope();
            scopes.addid(curr_case->get_name(), curr_case->get_type_decl());
            evaluate_expressions(scopes, curr_case->get_expr());
            scopes.exitscope();
        }
        return;
    }
}

void program_class::check_naming_and_scope() {
    SymbolTable<Symbol, Entry> scopes;
    for (int i = classes->first(); classes->more(i); i = classes->next(i)) {
        Class_ curr_class = classes->nth(i);
        scopes.enterscope();
        
        Features features = curr_class->get_features();

        /* Add all attributes to the current class scope */
        for (int j = features->first(); features->more(j); j = features->next(j)) {
            Feature curr_feature = features->nth(j);
            if (curr_feature->get_formals() == NULL) {
                if (scopes.lookup(curr_feature->get_name()) == NULL) {
                    scopes.addid(curr_feature->get_name(), curr_feature->get_type());
                } else {
                    cerr << "TO DO: Add filename " << ":" << curr_feature->get_line_number() << ": ";
                    cerr << "Attribute " << curr_feature->get_name()->get_string() << " is multiply defined in class."<< endl;
                }
            }
        }

        /* Descend into each method of the class and evaluate it */
        for (int j = features->first(); features->more(j); j = features->next(j)) {
            Feature curr_feature = features->nth(j);
            if (curr_feature->get_formals() != NULL) {
                scopes.enterscope();

                /* Now evaluate the formal paramenters of a method */
                Formals formals = curr_feature->get_formals();
                for (int k = formals->first(); formals->more(k); k = formals->next(k)) {
                    Formal curr_formal = formals->nth(k);
                    if (scopes.probe(curr_formal->get_name()) == NULL)
                    {
                        scopes.addid(curr_formal->get_name(), curr_formal->get_type());
                    } else {
                        cerr << "TO DO: Add filename" << ":" << curr_formal->get_line_number() << ": ";
                        cerr << "Formal parameter " << curr_formal->get_name()->get_string() << " is multiply defined."<< endl;
                    }
                }

                /* recursively evaluate the expression in a method */
                evaluate_expressions(scopes, curr_feature->get_expression());

                scopes.exitscope();
            }
        }


        scopes.exitscope();
    }
}



