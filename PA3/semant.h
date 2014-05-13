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
  * Description: keeps track of inheritance
  *   the first term in the symbol table is a symbol 
  *   containing the class name. the second is a symbol
  *   containing a parent class name. makes lookup easy.
  * *****************************************************
  */

  SymbolTable<Symbol, Entry> * inheritance_graph;

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
  * Description: validat_methods helper functions. 
  * *****************************************************
  */
  int check_for_multiple_methods(Classes classes_in_program);

  int check_methods_types(Classes classes_in_program);

  int check_overriden_methods(Classes classes_in_program);

  Feature search_for_inherited_method_def(Class_ curr_class, char* curr_method_name, Classes classes_in_program);

  int check_method_definitions(Class_ containing_class, Feature curr_feature, Feature inherited_method_def);

  /**
  * *****************************************************
  * Description: typecheck helper methods. 
  * *****************************************************
  */
  void typecheck_feature(Feature feature);

  void typecheck_method(Feature method);
  Symbol check_method_types(Feature feature);

  void typecheck_attribute(Feature attribute);

  Symbol typecheck_expression(Expression expr);

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
  * Description: Searches the methods of class containing_class
  *     for a method who's name matches method_name. 
  *     Searches only the methods defined in the containing_class
  * NOTE!! Does not search for inherited methods!!
  * To search inherited, get the parent of containing_class
  *     and then invoke this method with the parent. 
  * Returns the feature node that contains the method with
  *     name method_name, or NULL if none are found. 
  * *****************************************************
  */
  Feature find_method_by_name(Class_ containing_class, char* method_name);

  /**
  * *****************************************************
  * Find an attribute by its name in containing_class.
  * *****************************************************
  */
  Feature find_attribute_by_name(Class_ containing_class, char* name);

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

  void initialize_feature_enviornment(Class_ parent_class, Feature feature_to_init);

  void initialize_formal(Class_ root_class, SymbolTable<Symbol, Entry>* variables_in_scope, Formal formal_to_init);

  void initialize_expression(Class_ root_class, SymbolTable<Symbol, Entry>* variables_in_scope, Expression expression_to_init);

  void initialize_case_enviornment(SymbolTable<Symbol, Entry>* variables_in_scope, SymbolTable<char*, int>* case_types_so_far, Class_ root_class, Case curr_case);



  /* ***** LP added Class Table Debug Helper methods ******** */
  void print_class_names(Classes classes);
  void check_equality(Classes classes);
  /* ***** End Class Table Debug Helper methods ************* */


  /* Inheritance methods */
  void setup_inheritance_graph();
  bool isparent(Symbol t1, Symbol t2);
  Symbol get_common_parent(Symbol t1, Symbol t2);


  Symbol typecheck_assign(Expression e);

  Symbol typecheck_static_dispatch(Expression e);

  Symbol typecheck_dispatch(Expression e);

  Symbol typecheck_cond(Expression e);

  Symbol typecheck_loop(Expression e);

  Symbol typecheck_typcase(Expression e);

  Symbol typecheck_block(Expression e);

  Symbol typecheck_let(Expression e);

  Symbol typecheck_plus(Expression e);

  Symbol typecheck_sub(Expression e);

  Symbol typecheck_mul(Expression e);

  Symbol typecheck_divide(Expression e);

  Symbol typecheck_neg(Expression e);

  Symbol typecheck_lt(Expression e);

  Symbol typecheck_eq(Expression e);

  Symbol typecheck_leq(Expression e);

  Symbol typecheck_comp(Expression e);

  Symbol typecheck_int_const(Expression e);

  Symbol typecheck_bool_const(Expression e);

  Symbol typecheck_string_const(Expression e);

  Symbol typecheck_new_(Expression e);

  Symbol typecheck_isvoid(Expression e);

  Symbol typecheck_no_expr(Expression e);

  Symbol typecheck_object(Expression e);


public:

  /**
  * *****************************************************
  * Constructor
  * *****************************************************
  */
  ClassTable(Classes);

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
  * Description: Iterates through the class_list AST
  *     and updates the scope and class for each node.
  *     Also performs naming checks on variables. 
  * *****************************************************
  */
  void settup_typecheck_enviornment();

  /**
  * *****************************************************
  * Description: checks to ensure that the methods
  *     defined in the program are valid according
  *     to COOL Manual specification.
  * Returns 1 on error, 0 otherwise.
  * Methods below and before next comment are helper methods. 
  * *****************************************************
  */
  int validate_methods(Classes classes_in_program);

  /**
  * *****************************************************
  * Description: Entry point to the typchecker. 
  * *****************************************************
  */
  void typecheck_program();

  /**
  * *****************************************************
  * Description: Checks that a class Main is contained
  *     in the program, and that it contains a method
  *     called main. 
  * Return 1 on error, 0 otherwise. 
  * *****************************************************
  */
  int check_for_main(Classes classes_in_program);

  int errors() { return semant_errors; }
  ostream& semant_error();
  ostream& semant_error(Class_ c);
  ostream& semant_error(Symbol filename, tree_node *t);
};


#endif

