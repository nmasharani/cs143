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
   
   int stringclasstag;
   int intclasstag;
   int boolclasstag;



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
   int compute_max_locals_for_class_init(CgenNodeP curr_class);

   void emit_proto_attribute(ostream& s, Symbol type);

// The following creates an inheritance graph from
// a list of classes.  The graph is implemented as
// a tree of `CgenNode', and class names are placed
// in the base class symbol table.

   void install_basic_classes();
   void install_class(CgenNodeP nd);
   void install_classes(Classes cs);
   void build_inheritance_tree();
   void assign_class_tags(CgenNodeP curr_class);
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


   char* generate_init_label_for_class(Symbol curr_class);
   
public:

   List<CgenNode> *nds;
   ostream& str;

   /* FOR GENERATING PROTOTYPE OBJECTS */
   int tagtracker;
   SymbolTable<Symbol, int> * name_to_tag;
   SymbolTable<int, Entry> * tag_to_name; 

   /* FOR TRACKING CLASS METHODS AND ATTRS */
   SymbolTable<Symbol, Features_class> * class_methods;
   SymbolTable<Symbol, Features_class> * class_attributes;

   /* int used to generate a unique label id for branch control flow */
   int label_id;

   CgenClassTable(Classes, ostream& str);
   void code();
   CgenNodeP root();
   int compute_offset_in_disp_table(Symbol name, Symbol type);
   int get_tag_for_type(Symbol type_name);
   bool is_int_str_bool(Symbol type);
   int* get_sorted_tags(Cases cases, CgenClassTableP table); 
   int get_lowest_child_tag_for_class(Symbol curr_branch_type);
   CgenNodeP get_class_node_for_type(Symbol type);
   char* generate_dispatch_table_label_for_class(Symbol curr_class);
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
