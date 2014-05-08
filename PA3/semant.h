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
  Classes install_basic_classes(Classes classes_of_program);
  ostream& error_stream;

  /* ***** LP added Class Table Helper methods ******** */
  int check_inheritance_graph(Classes classes_of_program);
  int ensure_unique_class_names(Classes classes_of_program);
  int check_for_cycles(Classes classes_of_program);
  /* ***** End Class Table Helper methods ************* */

  /* ***** LP added Class Table Debug Helper methods ******** */
  void print_class_names(Classes classes);
  void check_equality(Classes classes);
  /* ***** End Class Table Debug Helper methods ************* */

public:
  ClassTable(Classes);
  int errors() { return semant_errors; }
  ostream& semant_error();
  ostream& semant_error(Class_ c);
  ostream& semant_error(Symbol filename, tree_node *t);
};


#endif
