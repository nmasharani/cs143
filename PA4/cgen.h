#include <assert.h>
#include <stdio.h>
#include "emit.h"
#include "cool-tree.h"
#include "symtab.h"

enum Basicness     {Basic, NotBasic};
#define TRUE 1
#define FALSE 0

class CgenClassTable;
typedef CgenClassTable *CgenClassTableP;

class CgenNode;
typedef CgenNode *CgenNodeP;



class CgenClassTable : public SymbolTable<Symbol,CgenNode> {
private:
   List<CgenNode> *nds;
   ostream& str;
   int stringclasstag;
   int intclasstag;
   int boolclasstag;

   
   /* FOR GENERATING PROTOTYPE OBJECTS */
   int tagtracker;
   SymbolTable<Symbol, int> * name_to_tag;
   SymbolTable<int, Entry> * tag_to_name; 




// The following methods emit code for
// constants and global declarations.

   void code_global_data();
   void code_global_text();
   void code_bools(int);
   void code_select_gc();
   void code_constants();
   void code_protos();
   void code_name_table();
   void code_object_table();
   void code_dispatch_table();
   void initialize_class_enviornment();
   void dump_class_enviornment(); //helper debug function
   void code_init_methods();
   void code_init_method(CgenNodeP curr_class);
   void code_class_methods();
   void code_method(CgenNodeP curr_class, Feature curr_feat); 

   void emit_proto_attribute(ostream& s, Symbol type);

// The following creates an inheritance graph from
// a list of classes.  The graph is implemented as
// a tree of `CgenNode', and class names are placed
// in the base class symbol table.

   void install_basic_classes();
   void install_class(CgenNodeP nd);
   void install_classes(Classes cs);
   void build_inheritance_tree();
   void set_relations(CgenNodeP nd);

   void build_class_attributes(CgenNodeP current, Symbol parent);
   void build_classes_attributes();
   void build_classes_methods();
   void build_subclass_methods(CgenNodeP current, Symbol parent);
   bool lookup_method(Feature f, Features f_list);
   Feature resolve_method(Feature f, Features f_list);
   void dump_classes_methods(ostream& s);
   void dump_class_methods(Symbol class_name, ostream& s);
   void dump_classes_attributes(ostream& s);
   void dump_class_attributes(Symbol class_name, ostream& s);
public:
   CgenClassTable(Classes, ostream& str);
   void code();
   CgenNodeP root();
};


class CgenNode : public class__class {
private: 
   CgenNodeP parentnd;                        // Parent of class
   List<CgenNode> *children;                  // Children of class
   Basicness basic_status;                    // `Basic' if class is basic
                                              // `NotBasic' otherwise

public:
   CgenNode(Class_ c,
            Basicness bstatus,
            CgenClassTableP class_table);

   void add_child(CgenNodeP child);
   List<CgenNode> *get_children() { return children; }
   void set_parentnd(CgenNodeP p);
   CgenNodeP get_parentnd() { return parentnd; }
   int basic() { return (basic_status == Basic); }
};

class BoolConst 
{
 private: 
  int val;
 public:
  BoolConst(int);
  void code_def(ostream&, int boolclasstag);
  void code_ref(ostream&) const;
};

/* FOR TRACKING CLASS METHODS AND ATTRS */
   SymbolTable<Symbol, Features_class> * class_methods;
   SymbolTable<Symbol, Features_class> * class_attributes;
