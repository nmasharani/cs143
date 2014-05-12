#ifndef SEMANT_H_
#define SEMANT_H_

#include <assert.h>
#include <iostream>  
#include "cool-tree.h"
#include "stringtab.h"
#include "symtab.h"
#include "list.h"

#define TRUE 1
#define FALSE 0

class ClassTable;
typedef ClassTable *ClassTableP;

// This is a structure that may be used to contain the semantic
// information such as the inheritance graph.  You may use it or not as
// you like: it is only here to provide a container for the supplied
// methods.

class ClassTable {
private:
  int semant_errors;
  ostream& error_stream;

  /**
  * *****************************************************
  * Description: keeps track of the types that are defined
  *     for this program. Note, a type is simply a class
  *     name, which can be both user defined, or basic
  *     class. Use a single scope level of the symbol
  *     table as a container.
  * *****************************************************
  */
  SymbolTable<char*, int>* defined_types;

  /**
  * *****************************************************
  * Description: the AST of the program is essentialy
  *     a list of classes, where each class is an AST
  *     subtree. 
  * *****************************************************
  */
  Classes program_classes_AST;

  /**
  * *****************************************************
  * Description: returns a list of all classes contained
  *     in the program, which consists of classes defined
  *     defined by program, and the basic classes. 
  * *****************************************************
  */
  Classes install_basic_classes(Classes classes_of_program);

  /**
  * *****************************************************
  * Description: returns a pointer to a symbol table that
  *     contains the valid types of the prgram. Checks
  *     for duplicate class names, and class names that
  *     are not allowed, ie SELF_TYPE, and the basic 
  *     class defintions. 
  * *****************************************************
  */
  SymbolTable<char*, int>* collect_all_valid_types(Classes classes_in_program);
  bool name_is_reserved_classname(char* name);


  /**
  * *****************************************************
  * Description: checks for valid inheritance.
  *     meaning, cannot inherit from certain basic
  *     classes or SELF_TYPE. 
  * Returns 0 on success, 1 on error. 
  * *****************************************************
  */
  int check_for_valid_inheritance(Classes classes, SymbolTable<char*, int>* defined_types);
  bool parent_is_forbidden(char* name);

  /**
  * *****************************************************
  * Description: checks the class hierarchy for an 
  *     an inheritance cycle. 
  * Returns 0 if the inheritance graph is cycle free
  *     or 1 if the graph contains cycles. 
  * *****************************************************
  */
  int check_for_inheritance_cycle(Classes classes_in_program);

  /**
  * *****************************************************
  * Description: Checks that a class Main is contained
  *     in the program, and that it contains a method
  *     called main. 
  * Return 1 on error, 0 otherwise. 
  * *****************************************************
  */
  int check_for_main(Classes classes_in_program);

  /**
  * *****************************************************
  * Description: helper function. Takes a list of classes
  *     and returns pointer to Class_ object that has the name
  *     passed in, or NULL if no match. 
  * Return: class object mathching name, or NULL
  *     if no match. 
  * *****************************************************
  */
  Class_ find_class_by_name(Classes classes, char* name);

  /**
  * *****************************************************
  * Description: helper function. checks if type1 is a 
  *     parent of type2.
  * Return: true if type 1 is a parent of type 2, false
  *     otherwise. 
  * *****************************************************
  */
  bool is_parent(Classes classes_in_program, Symbol type1, Symbol type2);

  /**
  * *****************************************************
  * Description: initializes the enviornment for this
  *     class. 
  * *****************************************************
  */
  void initialize_class_enviornment(Class_ curr_class);

  void initialize_feature_enviornment(Class_ parent_class, 
    Feature feature_to_init);

  void initialize_formal(Class_ root_class, 
    SymbolTable<Symbol, Entry>* variables_in_scope, Formal formal_to_init);

  void initialize_expression(Class_ root_class, 
    SymbolTable<Symbol, Entry>* variables_in_scope, Expression expression_to_init);

  void initialize_case_enviornment(SymbolTable<Symbol, Entry>* variables_in_scope, 
    SymbolTable<char*, int>* case_types_so_far, Class_ root_class, Case curr_case);



  /* ***** LP added Class Table Debug Helper methods ******** */
  void print_class_names(Classes classes);
  void check_equality(Classes classes);
  /* ***** End Class Table Debug Helper methods ************* */

public:

  /**
  * *****************************************************
  * Constructor
  * *****************************************************
  */
  ClassTable(Classes);

  /**
  * *****************************************************
  * Description: Iterates through the class_list AST
  *     and updates the scope and class for each node.
  *     Also performs naming checks on variables. 
  * *****************************************************
  */
  void settup_typecheck_enviornment();

  void update_expression_with_inheritance(Expression e, SymbolTable<Symbol, Entry> * graph);
  void update_branch_with_inheritance(Class_ c, SymbolTable<Symbol, Entry> * graph);
  SymbolTable<Symbol, Class_> * setup_inheritance_trackers();

  void update_expression_with_method_formals(Expression e, SymbolTable<Symbol, Formals> * formals);
  void setup_method_formals(SymbolTable<Symbol, Class_> * inheritance_graph);


  int errors() { return semant_errors; }
  ostream& semant_error();
  ostream& semant_error(Class_ c);
  ostream& semant_error(Symbol filename, tree_node *t);
};


#endif

