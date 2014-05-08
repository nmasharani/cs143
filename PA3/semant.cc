

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

/*
* ***************************************************
- To do: add in basic classes. 
* ***************************************************
*/
ClassTable::ClassTable(Classes classes) : semant_errors(0) , error_stream(cerr) {

    /* Fill this in */
    Classes classes_of_program = classes;
    classes_of_program = install_basic_classes(classes_of_program);

    /* Check for possible class inheritcance cycles */
    int status = check_inheritance_graph(classes_of_program);
    

}

/**
* This method checks to ensure that the inheritance graph is well-defined. 
* This means that there are no duplicate names, no cycles, and that all
* classes that another class inherits from are defined. 
*/
int ClassTable::check_inheritance_graph(Classes classes_of_program) {
    int status;
    // step1: Make sure no class has the same name as other class
    status = ensure_unique_class_names(classes_of_program);
    status = check_for_cycles(classes_of_program);
    return status;
}

int ClassTable::check_for_cycles(Classes classes_of_program) {
    int status = 0;
    SymbolTable<Symbol, Entry> parents;
    parents.enterscope();
    for (int i = classes_of_program->first(); classes_of_program->more(i); i = classes_of_program->next(i)) {
        Class_ curr_class = classes_of_program->nth(i);
        parents.addid(curr_class->get_name(), curr_class->get_parent());
    }
    for (int i = classes_of_program->first(); classes_of_program->more(i); i = classes_of_program->next(i)) {
        Class_ curr_class = classes_of_program->nth(i);
        Symbol base_class = curr_class->get_name();
        Symbol curr_parent = curr_class->get_parent();
        while (true) {
            if (strcmp(curr_parent->get_string(), base_class->get_string()) == 0) {
                ostream& err_stream = semant_error(curr_class);
                err_stream << base_class->get_string();
                err_stream << " contains an inheritance cycle.\n";
                status = 1;
                break;
             } else if (strcmp(curr_parent->get_string(), "_no_class") == 0) {
                break;
             } else {
                curr_parent = parents.lookup(curr_parent);
             }
        }
    }
    return status;
}

/* Note, checks for unique class names and for SELF_TYPE */
int ClassTable::ensure_unique_class_names(Classes classes_of_program) {
    int status = 0;
    SymbolTable<Symbol, int> duplicate_finder;
    duplicate_finder.enterscope();
    for (int i = classes_of_program->first(); classes_of_program->more(i); i = classes_of_program->next(i)) {
        Symbol curr_class_name = classes_of_program->nth(i)->get_name();
        if (strcmp(curr_class_name->get_string(), "SELF_TYPE") == 0) {
            ostream& err_stream = semant_error(classes_of_program->nth(i));
            err_stream << curr_class_name->get_string();
            err_stream << " cannot be used as a class name.\n";
            status = 1;
        } else if (duplicate_finder.lookup(curr_class_name) != NULL) {
            ostream& err_stream = semant_error(classes_of_program->nth(i));
            err_stream << curr_class_name->get_string();
            err_stream << " is already defined, and duplicate names are not allowed.\n";
            status = 1;
        } else {
            duplicate_finder.addid(curr_class_name, new int(42));
        }
    }
    return status;
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

/* Recursively evaluate the expressions */
/* Base cases are the leaves of the tree. These are: */
/*      - int literal, string literal, no_expr(), Bool_const, Object ... (MORE ?) */
void program_class::evaluate_expressions(SymbolTable<Symbol, Entry>& scopes, Expression expr) {

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
                scopes.addid(curr_feature->get_name(), curr_feature->get_type());
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
                    scopes.addid(curr_formal->get_name(), curr_formal->get_type());
                }

                /* recursively evaluate the expression in a method */
                evaluate_expressions(&scopes, curr_feature->get_expression());

                scopes.exitscope();
            }
        }


        scopes.exitscope();
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

    check_naming_and_scope();


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



