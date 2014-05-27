
/////////////////////////////////////////////////////////////////
//
// Code generator SKELETON
//
// Read the comments carefully. Make sure to
//    initialize the base class tags in
//       `CgenClassTable::CgenClassTable'
//
//    Add the label for the dispatch tables to
//       `IntEntry::code_def'
//       `StringEntry::code_def'
//       `BoolConst::code_def'
//
//    Add code to emit everyting else that is needed
//       in `CgenClassTable::code'
//
//
// The files as provided will produce code to begin the code
// segments, declare globals, and emit constants.  You must
// fill in the rest.
//
/////////////////////////////////////////////////////////////////

/////////////////////////////////////////////////////////////////
//
// Stack Convention:
// - Callee saves the FP, SELF, and RA
//
/////////////////////////////////////////////////////////////////

#include "cgen.h"
#include "cgen_gc.h"

extern void emit_string_constant(ostream& str, char *s);
extern int cgen_debug;

//
// Three symbols from the semantic analyzer (semant.cc) are used.
// If e : No_type, then no code is generated for e.
// Special code is generated for new SELF_TYPE.
// The name "self" also generates code different from other references.
//
//////////////////////////////////////////////////////////////////////
//
// Symbols
//
// For convenience, a large number of symbols are predefined here.
// These symbols include the primitive type and method names, as well
// as fixed names used by the runtime system.
//
//////////////////////////////////////////////////////////////////////
Symbol 
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

//////////////////////////////////////////////////////////////////////////////
//
// Initializing the predefined symbols.
//
//////////////////////////////////////////////////////////////////////////////
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

static char *gc_init_names[] =
  { "_NoGC_Init", "_GenGC_Init", "_ScnGC_Init" };
static char *gc_collect_names[] =
  { "_NoGC_Collect", "_GenGC_Collect", "_ScnGC_Collect" };


//  BoolConst is a class that implements code generation for operations
//  on the two booleans, which are given global names here.
BoolConst falsebool(FALSE);
BoolConst truebool(TRUE);

//////////////////////////////////////////////////////////////////////////////
//
// Define method for code generation
//
// This is the method called by the compiler driver
// `cgtest.cc'. cgen takes an `ostream' to which the assembly will be
// emmitted, and it passes this and the class list of the
// code generator tree to the constructor for `CgenClassTable'.
// That constructor performs all of the work of the code
// generator.
//
//////////////////////////////////////////////////////////////////////////////

void program_class::cgen(ostream &os) 
{
  // spim wants comments to start with '#'
  os << "# start of generated code\n";

  initialize_constants();
  CgenClassTable *codegen_classtable = new CgenClassTable(classes,os);

  os << "\n# end of generated code\n";
}


//////////////////////////////////////////////////////////////////////////////
//
//  emit_* procedures
//
//  emit_X  writes code for operation "X" to the output stream.
//  There is an emit_X for each opcode X, as well as emit_ functions
//  for generating names according to the naming conventions (see emit.h)
//  and calls to support functions defined in the trap handler.
//
//  Register names and addresses are passed as strings.  See `emit.h'
//  for symbolic names you can use to refer to the strings.
//
//////////////////////////////////////////////////////////////////////////////
static void emit_load(char *dest_reg, int offset, char *source_reg, ostream& s)
{
  s << LW << dest_reg << " " << offset * WORD_SIZE << "(" << source_reg << ")" 
    << endl;
}

////////////////////////////////////////////////////////////////////////////////
//
// Emit mips helper. 
//
////////////////////////////////////////////////////////////////////////////////
static void emit_store(char *source_reg, int offset, char *dest_reg, ostream& s)
{
  s << SW << source_reg << " " << offset * WORD_SIZE << "(" << dest_reg << ")"
      << endl;
}

////////////////////////////////////////////////////////////////////////////////
//
// Emit mips helper. 
//
////////////////////////////////////////////////////////////////////////////////
static void emit_load_imm(char *dest_reg, int val, ostream& s)
{ s << LI << dest_reg << " " << val << endl; }

////////////////////////////////////////////////////////////////////////////////
//
// Emit mips helper. 
//
////////////////////////////////////////////////////////////////////////////////
static void emit_load_address(char *dest_reg, char *address, ostream& s)
{ s << LA << dest_reg << " " << address << endl; }

////////////////////////////////////////////////////////////////////////////////
//
// Emit mips helper. 
//
////////////////////////////////////////////////////////////////////////////////
static void emit_partial_load_address(char *dest_reg, ostream& s)
{ s << LA << dest_reg << " "; }

////////////////////////////////////////////////////////////////////////////////
//
// Emit mips helper. 
//
////////////////////////////////////////////////////////////////////////////////
static void emit_load_bool(char *dest, const BoolConst& b, ostream& s) {
  emit_partial_load_address(dest,s);
  b.code_ref(s);
  s << endl;
}

////////////////////////////////////////////////////////////////////////////////
//
// Emit mips helper. 
//
////////////////////////////////////////////////////////////////////////////////
static void emit_load_string(char *dest, StringEntry *str, ostream& s) {
  emit_partial_load_address(dest,s);
  str->code_ref(s);
  s << endl;
}

////////////////////////////////////////////////////////////////////////////////
//
// Emit mips helper. 
//
////////////////////////////////////////////////////////////////////////////////
static void emit_load_int(char *dest, IntEntry *i, ostream& s) {
  emit_partial_load_address(dest,s);
  i->code_ref(s);
  s << endl;
}

////////////////////////////////////////////////////////////////////////////////
//
// Emit mips helper. 
//
////////////////////////////////////////////////////////////////////////////////
static void emit_move(char *dest_reg, char *source_reg, ostream& s)
{ s << MOVE << dest_reg << " " << source_reg << endl; }

////////////////////////////////////////////////////////////////////////////////
//
// Emit mips helper. 
//
////////////////////////////////////////////////////////////////////////////////
static void emit_neg(char *dest, char *src1, ostream& s)
{ s << NEG << dest << " " << src1 << endl; }

////////////////////////////////////////////////////////////////////////////////
//
// Emit mips helper. 
//
////////////////////////////////////////////////////////////////////////////////
static void emit_add(char *dest, char *src1, char *src2, ostream& s)
{ s << ADD << dest << " " << src1 << " " << src2 << endl; }

////////////////////////////////////////////////////////////////////////////////
//
// Emit mips helper. 
//
////////////////////////////////////////////////////////////////////////////////
static void emit_addu(char *dest, char *src1, char *src2, ostream& s)
{ s << ADDU << dest << " " << src1 << " " << src2 << endl; }

////////////////////////////////////////////////////////////////////////////////
//
// Emit mips helper. 
//
////////////////////////////////////////////////////////////////////////////////
static void emit_addiu(char *dest, char *src1, int imm, ostream& s)
{ s << ADDIU << dest << " " << src1 << " " << imm << endl; }

////////////////////////////////////////////////////////////////////////////////
//
// Emit mips helper. 
//
////////////////////////////////////////////////////////////////////////////////
static void emit_div(char *dest, char *src1, char *src2, ostream& s)
{ s << DIV << dest << " " << src1 << " " << src2 << endl; }

////////////////////////////////////////////////////////////////////////////////
//
// Emit mips helper. 
//
////////////////////////////////////////////////////////////////////////////////
static void emit_mul(char *dest, char *src1, char *src2, ostream& s)
{ s << MUL << dest << " " << src1 << " " << src2 << endl; }

////////////////////////////////////////////////////////////////////////////////
//
// Emit mips helper. 
//
////////////////////////////////////////////////////////////////////////////////
static void emit_sub(char *dest, char *src1, char *src2, ostream& s)
{ s << SUB << dest << " " << src1 << " " << src2 << endl; }

////////////////////////////////////////////////////////////////////////////////
//
// Emit mips helper. 
//
////////////////////////////////////////////////////////////////////////////////
static void emit_sll(char *dest, char *src1, int num, ostream& s)
{ s << SLL << dest << " " << src1 << " " << num << endl; }

////////////////////////////////////////////////////////////////////////////////
//
// Emit mips helper. 
//
////////////////////////////////////////////////////////////////////////////////
static void emit_jalr(char *dest, ostream& s)
{ s << JALR << "\t" << dest << endl; }

////////////////////////////////////////////////////////////////////////////////
//
// Emit mips helper. 
//
////////////////////////////////////////////////////////////////////////////////
static void emit_jal(char *address,ostream &s)
{ s << JAL << address << endl; }

////////////////////////////////////////////////////////////////////////////////
//
// Emit mips helper. 
//
////////////////////////////////////////////////////////////////////////////////
static void emit_return(ostream& s)
{ s << RET << endl; }

////////////////////////////////////////////////////////////////////////////////
//
// Emit mips helper. 
//
////////////////////////////////////////////////////////////////////////////////
static void emit_gc_assign(ostream& s)
{ s << JAL << "_GenGC_Assign" << endl; }

////////////////////////////////////////////////////////////////////////////////
//
// Emit mips helper. 
//
////////////////////////////////////////////////////////////////////////////////
static void emit_disptable_ref(Symbol sym, ostream& s)
{  s << sym << DISPTAB_SUFFIX; }

////////////////////////////////////////////////////////////////////////////////
//
// Emit mips helper. 
//
////////////////////////////////////////////////////////////////////////////////
static void emit_init_ref(Symbol sym, ostream& s)
{ s << sym << CLASSINIT_SUFFIX; }

////////////////////////////////////////////////////////////////////////////////
//
// Emit mips helper. 
//
////////////////////////////////////////////////////////////////////////////////
static void emit_label_ref(int l, ostream &s)
{ s << "label" << l; }

////////////////////////////////////////////////////////////////////////////////
//
// Emit mips helper. 
//
////////////////////////////////////////////////////////////////////////////////
static void emit_protobj_ref(Symbol sym, ostream& s)
{ s << sym << PROTOBJ_SUFFIX; }

////////////////////////////////////////////////////////////////////////////////
//
// Emit mips helper. 
//
////////////////////////////////////////////////////////////////////////////////
static void emit_method_ref(Symbol classname, Symbol methodname, ostream& s)
{ s << classname << METHOD_SEP << methodname; }

////////////////////////////////////////////////////////////////////////////////
//
// Emit mips helper. 
//
////////////////////////////////////////////////////////////////////////////////
static void emit_label_def(int l, ostream &s)
{
  emit_label_ref(l,s);
  s << ":" << endl;
}

////////////////////////////////////////////////////////////////////////////////
//
// Emit mips helper. 
//
////////////////////////////////////////////////////////////////////////////////
static void emit_beqz(char *source, int label, ostream &s)
{
  s << BEQZ << source << " ";
  emit_label_ref(label,s);
  s << endl;
}

////////////////////////////////////////////////////////////////////////////////
//
// Emit mips helper. 
//
////////////////////////////////////////////////////////////////////////////////
static void emit_beq(char *src1, char *src2, int label, ostream &s)
{
  s << BEQ << src1 << " " << src2 << " ";
  emit_label_ref(label,s);
  s << endl;
}

////////////////////////////////////////////////////////////////////////////////
//
// Emit mips helper. 
//
////////////////////////////////////////////////////////////////////////////////
static void emit_bne(char *src1, char *src2, int label, ostream &s)
{
  s << BNE << src1 << " " << src2 << " ";
  emit_label_ref(label,s);
  s << endl;
}

////////////////////////////////////////////////////////////////////////////////
//
// Emit mips helper. 
//
////////////////////////////////////////////////////////////////////////////////
static void emit_bleq(char *src1, char *src2, int label, ostream &s)
{
  s << BLEQ << src1 << " " << src2 << " ";
  emit_label_ref(label,s);
  s << endl;
}

////////////////////////////////////////////////////////////////////////////////
//
// Emit mips helper. 
//
////////////////////////////////////////////////////////////////////////////////
static void emit_blt(char *src1, char *src2, int label, ostream &s)
{
  s << BLT << src1 << " " << src2 << " ";
  emit_label_ref(label,s);
  s << endl;
}

////////////////////////////////////////////////////////////////////////////////
//
// Emit mips helper. 
//
////////////////////////////////////////////////////////////////////////////////
static void emit_blti(char *src1, int imm, int label, ostream &s)
{
  s << BLT << src1 << " " << imm << " ";
  emit_label_ref(label,s);
  s << endl;
}

////////////////////////////////////////////////////////////////////////////////
//
// Emit mips helper. 
//
////////////////////////////////////////////////////////////////////////////////
static void emit_bgti(char *src1, int imm, int label, ostream &s)
{
  s << BGT << src1 << " " << imm << " ";
  emit_label_ref(label,s);
  s << endl;
}

////////////////////////////////////////////////////////////////////////////////
//
// Emit mips helper. 
//
////////////////////////////////////////////////////////////////////////////////
static void emit_branch(int l, ostream& s)
{
  s << BRANCH;
  emit_label_ref(l,s);
  s << endl;
}

////////////////////////////////////////////////////////////////////////////////
//
// Push a register on the stack. The stack grows towards smaller addresses.
//
////////////////////////////////////////////////////////////////////////////////
static void emit_push(char *reg, ostream& str)
{
  emit_store(reg,0,SP,str);
  emit_addiu(SP,SP,-4,str);
}

////////////////////////////////////////////////////////////////////////////////
//
// Fetch the integer value in an Int object.
// Emits code to fetch the integer value of the Integer object pointed
// to by register source into the register dest
//
////////////////////////////////////////////////////////////////////////////////
static void emit_fetch_int(char *dest, char *source, ostream& s)
{ emit_load(dest, DEFAULT_OBJFIELDS, source, s); }

////////////////////////////////////////////////////////////////////////////////
//
// Emits code to store the integer value contained in register source
// into the Integer object pointed to by dest.
//
////////////////////////////////////////////////////////////////////////////////
static void emit_store_int(char *source, char *dest, ostream& s)
{ emit_store(source, DEFAULT_OBJFIELDS, dest, s); }

////////////////////////////////////////////////////////////////////////////////
//
// Emit mips helper. 
//
////////////////////////////////////////////////////////////////////////////////
static void emit_test_collector(ostream &s)
{
  emit_push(ACC, s);
  emit_move(ACC, SP, s); // stack end
  emit_move(A1, ZERO, s); // allocate nothing
  s << JAL << gc_collect_names[cgen_Memmgr] << endl;
  emit_addiu(SP,SP,4,s);
  emit_load(ACC,0,SP,s);
}

////////////////////////////////////////////////////////////////////////////////
//
// Emit mips helper. 
//
////////////////////////////////////////////////////////////////////////////////
static void emit_gc_check(char *source, ostream &s)
{
  if (source != (char*)A1) emit_move(A1, source, s);
  s << JAL << "_gc_check" << endl;
}


///////////////////////////////////////////////////////////////////////////////
//
// coding strings, ints, and booleans
//
// Cool has three kinds of constants: strings, ints, and booleans.
// This section defines code generation for each type.
//
// All string constants are listed in the global "stringtable" and have
// type StringEntry.  StringEntry methods are defined both for String
// constant definitions and references.
//
// All integer constants are listed in the global "inttable" and have
// type IntEntry.  IntEntry methods are defined for Int
// constant definitions and references.
//
// Since there are only two Bool values, there is no need for a table.
// The two booleans are represented by instances of the class BoolConst,
// which defines the definition and reference methods for Bools.
//
///////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////////
//
// Strings
//
////////////////////////////////////////////////////////////////////////////////
void StringEntry::code_ref(ostream& s)
{
  s << STRCONST_PREFIX << index;
}

////////////////////////////////////////////////////////////////////////////////
//
// Emit code for a constant String.
// You should fill in the code naming the dispatch table.
//
////////////////////////////////////////////////////////////////////////////////
void StringEntry::code_def(ostream& s, int stringclasstag)
{
  IntEntryP lensym = inttable.add_int(len);

  // Add -1 eye catcher
  s << WORD << "-1" << endl;

  code_ref(s);  s  << LABEL                                             // label
      << WORD << stringclasstag << endl                                 // tag
      << WORD << (DEFAULT_OBJFIELDS + STRING_SLOTS + (len+4)/4) << endl // size
      << WORD;

      emit_disptable_ref(Str, s);

      s << endl;                                              // dispatch table
      s << WORD;  lensym->code_ref(s);  s << endl;            // string length
  emit_string_constant(s,str);                                // ascii string
  s << ALIGN;                                                 // align to word
}

////////////////////////////////////////////////////////////////////////////////
//
// StrTable::code_string
// Generate a string object definition for every string constant in the 
// stringtable.
//
////////////////////////////////////////////////////////////////////////////////
void StrTable::code_string_table(ostream& s, int stringclasstag)
{  
  for (List<StringEntry> *l = tbl; l; l = l->tl())
    l->hd()->code_def(s,stringclasstag);
}

////////////////////////////////////////////////////////////////////////////////
//
// Ints
//
////////////////////////////////////////////////////////////////////////////////
void IntEntry::code_ref(ostream &s)
{
  s << INTCONST_PREFIX << index;
}

////////////////////////////////////////////////////////////////////////////////
//
// Emit code for a constant Integer.
// You should fill in the code naming the dispatch table.
//
////////////////////////////////////////////////////////////////////////////////
void IntEntry::code_def(ostream &s, int intclasstag)
{
  // Add -1 eye catcher
  s << WORD << "-1" << endl;

  code_ref(s);  s << LABEL                                // label
      << WORD << intclasstag << endl                      // class tag
      << WORD << (DEFAULT_OBJFIELDS + INT_SLOTS) << endl  // object size
      << WORD; 

      emit_disptable_ref(Int, s);

      s << endl;                                          // dispatch table
      s << WORD << str << endl;                           // integer value
}

////////////////////////////////////////////////////////////////////////////////
//
// IntTable::code_string_table
// Generate an Int object definition for every Int constant in the
// inttable.
//
////////////////////////////////////////////////////////////////////////////////
void IntTable::code_string_table(ostream &s, int intclasstag)
{
  for (List<IntEntry> *l = tbl; l; l = l->tl())
    l->hd()->code_def(s,intclasstag);
}


//////////////////////////////////////////////////////////////////////////////////
//
// Bools
//
//////////////////////////////////////////////////////////////////////////////////
BoolConst::BoolConst(int i) : val(i) { assert(i == 0 || i == 1); }

void BoolConst::code_ref(ostream& s) const
{
  s << BOOLCONST_PREFIX << val;
}
  
////////////////////////////////////////////////////////////////////////////////
//
// Emit code for a constant Bool.
// You should fill in the code naming the dispatch table.
//
////////////////////////////////////////////////////////////////////////////////
void BoolConst::code_def(ostream& s, int boolclasstag)
{
  // Add -1 eye catcher
  s << WORD << "-1" << endl;

  code_ref(s);  s << LABEL                                  // label
      << WORD << boolclasstag << endl                       // class tag
      << WORD << (DEFAULT_OBJFIELDS + BOOL_SLOTS) << endl   // object size
      << WORD;

      emit_disptable_ref(Bool, s);

      s << endl;                                            // dispatch table
      s << WORD << val << endl;                             // value (0 or 1)
}

//////////////////////////////////////////////////////////////////////////////
//
//  CgenClassTable methods
//
//////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////////
//
//  Emit code to start the .data segment and to
//  declare the global names.
//
////////////////////////////////////////////////////////////////////////////////

void CgenClassTable::code_global_data()
{
  Symbol main    = idtable.lookup_string(MAINNAME);
  Symbol string  = idtable.lookup_string(STRINGNAME);
  Symbol integer = idtable.lookup_string(INTNAME);
  Symbol boolc   = idtable.lookup_string(BOOLNAME);

  str << "\t.data\n" << ALIGN;
  //
  // The following global names must be defined first.
  //
  str << GLOBAL << CLASSNAMETAB << endl;

  str << GLOBAL; emit_protobj_ref(main,str);    str << endl;
  str << GLOBAL; emit_protobj_ref(integer,str); str << endl;
  str << GLOBAL; emit_protobj_ref(string,str);  str << endl;
  str << GLOBAL; falsebool.code_ref(str);  str << endl;
  str << GLOBAL; truebool.code_ref(str);   str << endl;
  str << GLOBAL << INTTAG << endl;
  str << GLOBAL << BOOLTAG << endl;
  str << GLOBAL << STRINGTAG << endl;

  //
  // We also need to know the tag of the Int, String, and Bool classes
  // during code generation.
  //
  str << INTTAG << LABEL
      << WORD << intclasstag << endl;
  str << BOOLTAG << LABEL 
      << WORD << boolclasstag << endl;
  str << STRINGTAG << LABEL 
      << WORD << stringclasstag << endl;    
}


////////////////////////////////////////////////////////////////////////////////
//
//  Emit code to start the .text segment and to
//  declare the global names.
//
////////////////////////////////////////////////////////////////////////////////

void CgenClassTable::code_global_text()
{
  str << GLOBAL << HEAP_START << endl
      << HEAP_START << LABEL 
      << WORD << 0 << endl
      << "\t.text" << endl
      << GLOBAL;
  emit_init_ref(idtable.add_string("Main"), str);
  str << endl << GLOBAL;
  emit_init_ref(idtable.add_string("Int"),str);
  str << endl << GLOBAL;
  emit_init_ref(idtable.add_string("String"),str);
  str << endl << GLOBAL;
  emit_init_ref(idtable.add_string("Bool"),str);
  str << endl << GLOBAL;
  emit_method_ref(idtable.add_string("Main"), idtable.add_string("main"), str);
  str << endl;
}

void CgenClassTable::code_bools(int boolclasstag)
{
  falsebool.code_def(str,boolclasstag);
  truebool.code_def(str,boolclasstag);
}

void CgenClassTable::code_select_gc()
{
  //
  // Generate GC choice constants (pointers to GC functions)
  //
  str << GLOBAL << "_MemMgr_INITIALIZER" << endl;
  str << "_MemMgr_INITIALIZER:" << endl;
  str << WORD << gc_init_names[cgen_Memmgr] << endl;
  str << GLOBAL << "_MemMgr_COLLECTOR" << endl;
  str << "_MemMgr_COLLECTOR:" << endl;
  str << WORD << gc_collect_names[cgen_Memmgr] << endl;
  str << GLOBAL << "_MemMgr_TEST" << endl;
  str << "_MemMgr_TEST:" << endl;
  str << WORD << (cgen_Memmgr_Test == GC_TEST) << endl;
}


////////////////////////////////////////////////////////////////////////////////
//
// Emit code to reserve space for and initialize all of
// the constants.  Class names should have been added to
// the string table (in the supplied code, is is done
// during the construction of the inheritance graph), and
// code for emitting string constants as a side effect adds
// the string's length to the integer table.  The constants
// are emmitted by running through the stringtable and inttable
// and producing code for each entry.
//
////////////////////////////////////////////////////////////////////////////////

void CgenClassTable::code_constants()
{
  //
  // Add constants that are required by the code generator.
  //
  stringtable.add_string("");
  inttable.add_string("0");

  stringtable.code_string_table(str,stringclasstag);
  inttable.code_string_table(str,intclasstag);
  code_bools(boolclasstag);
}

////////////////////////////////////////////////////////////////////////////////
//
// Outputs the string representation of the label that 
// appears in the attrbute slot of the given type
// within the prototype for a class's object. 
//
////////////////////////////////////////////////////////////////////////////////
void CgenClassTable::emit_proto_attribute(ostream& s, Symbol type) {


  if (strcmp(type->get_string(), Int->get_string()) == 0) {
    //find the int const label associated with 0 and return that
    s << WORD; inttable.lookup_string("0")->code_ref(s); s << endl;
    return;
  }
  if (strcmp(type->get_string(), Str->get_string()) == 0) {
    //find the str_const label associated with the empty string and return that
    s << WORD; stringtable.lookup_string("")->code_ref(s); s << endl;
    return;
  }
  if (strcmp(type->get_string(), Bool->get_string()) == 0) {
    s << WORD; falsebool.code_ref(s);  s << endl; 
    return;
  }
  s << WORD << "0" << endl;
}

////////////////////////////////////////////////////////////////////////////////
//
// Accessor methods defined for the AST nodes. 
//
////////////////////////////////////////////////////////////////////////////////
Symbol attr_class::get_type() { return type_decl; };

Symbol method_class::get_type() { return return_type; };

Symbol attr_class::get_name() { return name; };

Symbol method_class::get_name() { return name; };

Expression attr_class::get_expr() { return init; };

Expression method_class::get_expr() { return expr; };

Formals attr_class::get_formals() { return NULL; };

Formals method_class::get_formals() { return formals; };

Symbol formal_class::get_name() { return name; };

////////////////////////////////////////////////////////////////////////////////
//
// Max helper function. 
//
////////////////////////////////////////////////////////////////////////////////
int max(int num1, int num2) {
  if (num1 > num2) return num1;
  return num2;
}

////////////////////////////////////////////////////////////////////////////////
//
// Emits the labels and outlays space for the prototype objects of the
// program being compiled. 
//
////////////////////////////////////////////////////////////////////////////////
void CgenClassTable::code_protos() {
  // nl = node list

  // Iterate through classes. For each class
  for (List<CgenNode> * nl = nds; nl != NULL; nl = nl->tl()) {

    // Put a -1 at -4 off the class proto def-> garbage collector tag
    str << WORD << "-1" << endl;

    CgenNode * nd = nl->hd();
    Symbol class_name = nd->get_name();

    // ClassName_protObj:
    emit_protobj_ref(class_name, str); // get tags from name_to_tag
    str << ":" << endl;

    // Get the tag from the pre-generated tags stored in name_to_tag
    int tag = *(name_to_tag->probe(class_name)); // Class tag

    // Get a list of attributes
    Features attributes = class_attributes->lookup(class_name); // Attributes
    
    // Allocate space for attributes when calculating size
    int size = 1 + 1 + 1 + attributes->len(); // 1 for tag, 1 for size, 1 for dispatch pointer, 1 for each attr
    
    // .word X
    // .word Y
    // ClassName_dispTab
    str << WORD << tag << endl; // emit class tag
    str << WORD << size << endl;  // emit size
    str << WORD; // emit dispatch table
    emit_disptable_ref(class_name, str);
    str << endl;

    // For each attribute in the attribute list, emit an attribute

    // emit attributes
    for (int i = attributes->first(); attributes->more(i); i = attributes->next(i)) {
      Symbol type = attributes->nth(i)->get_type();
      emit_proto_attribute(str, type);
    }
    
  }
}


////////////////////////////////////////////////////////////////////////////////
//
//  lookup_method
//  
//  Looks for the method represented by feature f in the feature list. If the 
//  method is found in the list, the value found in the list REPLACES f and the
//  function returns true. Otherwise, the method returns false for not found.
//  
//  TRUE: method found in list
//  FALSE: method not found in list
//
////////////////////////////////////////////////////////////////////////////////

bool CgenClassTable::lookup_method(Feature f, Features f_list) {
  for (int i = f_list->first(); f_list->more(i); i = f_list->next(i)) {
    Feature feat = f_list->nth(i);
    if (strcmp(feat->get_name()->get_string(), f->get_name()->get_string()) == 0) {
      return true;
    }
  }
  return false;
}

Feature CgenClassTable::resolve_method(Feature parent_feat, Features child_feats) {
  for (int i = child_feats->first(); child_feats->more(i); i = child_feats->next(i)) {
    Feature child_feat = child_feats->nth(i);
    if (strcmp(child_feat->get_name()->get_string(), parent_feat->get_name()->get_string()) == 0) {
      return child_feat;
    }
  }
  return parent_feat;
}

////////////////////////////////////////////////////////////////////////////////
//
// Builds the dispatch table for the given class. 
//
////////////////////////////////////////////////////////////////////////////////
void CgenClassTable::build_subclass_methods(CgenNodeP current, Symbol parent) {
  Symbol class_name = current->name;
  Features features = current->features;
  Features methods = nil_Features();

  // cout << "Assigning current class to all features in class " << class_name->get_string() << endl;
  for (int i = features->first(); features->more(i); i = features->next(i)) {
    features->nth(i)->current_class = current->name;
    // cout << features->nth(i)->current_class->get_string() << endl;
  }
  // cout << "done" << endl;

  if (!parent) {
    for (int i = features->first(); features->more(i); i = features->next(i)) {
      Feature feature = features->nth(i);
      if (feature->ismethod) {
        methods = append_Features(methods, single_Features(feature));
      }
    }

  } else {
    Features parent_feats = class_methods->lookup(parent);

    // get all methods from parent class
    for (int i = parent_feats->first(); parent_feats->more(i); i = parent_feats->next(i)) {
      Feature parent_feat = parent_feats->nth(i);
      if (parent_feat->ismethod) {
        Feature feature_to_add = resolve_method(parent_feat, features);
        methods = append_Features(methods, single_Features(feature_to_add));
        
      }
    }

    // find all methods that are not in the parent class
    for (int i = features->first(); features->more(i); i = features->next(i)) {
      Feature feature = features->nth(i);
      if (feature->ismethod) {
        if (!lookup_method(feature, parent_feats)) {
          methods = append_Features(methods, single_Features(feature));
        }
      }
    }
  }

  class_methods->addid(class_name, methods);

  List<CgenNode>* children = current->get_children();

  for (List<CgenNode>* l = children; l != NULL; l = l->tl()) {
    CgenNodeP curr_child = l->hd();
    build_subclass_methods(curr_child, class_name);    
  }
}

void CgenClassTable::build_classes_methods() {
  class_methods->enterscope();
  Symbol parent = NULL;
  CgenNodeP rt = root();
  build_subclass_methods(rt, parent);
}

////////////////////////////////////////////////////////////////////////////////
//
// Prints the dispatch table of the class to the 
// given stream. 
//
////////////////////////////////////////////////////////////////////////////////
void CgenClassTable::dump_class_methods(Symbol class_name, ostream& s) {
  s << class_name->get_string() << endl;
  Features methods = class_methods->lookup(class_name);
  if (!methods) return;
  for (int i = methods->first(); methods->more(i); i = methods->next(i)) {
    Feature method = methods->nth(i);
    s << "\t" << method->current_class << "." << method->get_name()->get_string() << endl;
  }
}

void CgenClassTable::dump_classes_methods(ostream& s) {
  for (List<CgenNode> * nl = nds; nl != NULL; nl = nl->tl())
    dump_class_methods(nl->hd()->name, s);
}

////////////////////////////////////////////////////////////////////////////////
//
// Prints the attrbiutes of a class to stream. 
// Used for debugging to ensure that things are
// in proper order. 
//
////////////////////////////////////////////////////////////////////////////////
void CgenClassTable::dump_class_attributes(Symbol class_name, ostream& s) {
  s << class_name->get_string() << endl;
  Features attributes = class_attributes->lookup(class_name);
  if (!attributes) return;
  for (int i = attributes->first(); attributes->more(i); i = attributes->next(i)) {
    Feature attribute = attributes->nth(i);
    s << "\t" << attribute->current_class << "." << attribute->get_name()->get_string() << endl;
  }
}

void CgenClassTable::dump_classes_attributes(ostream& s) {
  for (List<CgenNode> * nl = nds; nl != NULL; nl = nl->tl())
    dump_class_attributes(nl->hd()->name, s);
}

////////////////////////////////////////////////////////////////////////////////
//
// Builds a list of attrbiutes for each class
// making sure to add the attributes
// in the correct order.
// The order of the attributes in the list is the
// order in which the attributes will be laid out
// in the in memory "record" for the object of this
// given class. 
//
////////////////////////////////////////////////////////////////////////////////
void CgenClassTable::build_class_attributes(CgenNodeP current, Symbol parent) {
  Symbol class_name = current->name;
  Features features = current->features;
  Features attributes = nil_Features();

  if (parent) {
    Features parent_attrs = class_attributes->lookup(parent);
    attributes = append_Features(parent_attrs, nil_Features());
  }

  for (int i = features->first(); features->more(i); i = features->next(i)) {
    Feature feature = features->nth(i);
    if (!feature->ismethod) {
      attributes = append_Features(attributes, single_Features(feature));
    } 
  }

  class_attributes->addid(class_name, attributes);

  List<CgenNode>* children = current->get_children();

  for (List<CgenNode>* l = children; l != NULL; l = l->tl()) {
    CgenNodeP curr_child = l->hd();
    build_class_attributes(curr_child, class_name);    
  }
}

////////////////////////////////////////////////////////////////////////////////
//
// Dispatches to the build_class_attributes for each 
// class. 
//
////////////////////////////////////////////////////////////////////////////////
void CgenClassTable::build_classes_attributes() {
  class_attributes->enterscope();
  Symbol parent = NULL;
  CgenNodeP rt = root();
  build_class_attributes(rt, parent);
}

////////////////////////////////////////////////////////////////////////////////
//
// Prints the class_nameTab to the file. 
//
////////////////////////////////////////////////////////////////////////////////
void CgenClassTable::code_name_table() {
  // class_nameTab:
  str << CLASSNAMETAB << LABEL;


  for (int i = 0; i < tagtracker; i++) {
    Symbol curr_class = tag_to_name->lookup(i);
    str << WORD;
    stringtable.lookup_string(curr_class->get_string())->code_ref(str);
    str << endl;
  }
}

////////////////////////////////////////////////////////////////////////////////
//
// Prints the class_objTab to the file. 
//
////////////////////////////////////////////////////////////////////////////////
void CgenClassTable::code_object_table() {
  str << CLASSOBJTAB << LABEL;
  for (int i = 0; i < tagtracker; i++) {
    Symbol curr_class = tag_to_name->lookup(i);
    str << WORD << curr_class->get_string() << PROTOBJ_SUFFIX << endl;
    str << WORD << curr_class->get_string() << CLASSINIT_SUFFIX << endl;
  }
}

////////////////////////////////////////////////////////////////////////////////
//
// Emit the labels for the dispatch table of each
// class. 
//
////////////////////////////////////////////////////////////////////////////////
void CgenClassTable::code_dispatch_table() {
  // for each class in order of tags
  for (int i = 0; i < tagtracker; i++) {
    Symbol class_name = tag_to_name->lookup(i);
    Features methods = class_methods->lookup(class_name);

    // ClassName_dispTab:
    emit_disptable_ref(class_name, str); str << LABEL;
    for (int j = methods->first(); methods->more(j); j = methods->next(j)) {
      Feature method = methods->nth(j);
      str << WORD; emit_method_ref(method->current_class, method->get_name(), str); str << endl;
    }
  }
}

////////////////////////////////////////////////////////////////////////////////
//
// Assigns tags to classes such that the tags indicate the inheritance ordering
// of the inhertance graph. Object will start with tag 0. 
//
////////////////////////////////////////////////////////////////////////////////
void CgenClassTable::assign_class_tags(CgenNodeP curr_class) {
  Symbol class_name = curr_class->get_name();
  int tag = tagtracker;
  name_to_tag->addid(class_name, new int(tag));
  tag_to_name->addid(tag, class_name);
  tagtracker++;

  if (strcmp(class_name->get_string(), Int->get_string()) == 0) {
    intclasstag = tag;
  } 
  if (strcmp(class_name->get_string(), Bool->get_string()) == 0) {
    boolclasstag = tag;
  } 
  if (strcmp(class_name->get_string(), Str->get_string()) == 0) {
    stringclasstag = tag;
  }  

  // finally, assign tags to all children. 
  List<CgenNode>* children = curr_class->get_children();
  for (List<CgenNode>* l = children; l != NULL; l = l->tl()) {
    CgenNodeP curr_child = l->hd();
    assign_class_tags(curr_child);   
  } 
}

////////////////////////////////////////////////////////////////////////////////
//
// CgenTable constructor. Initializes all of the 
// compilers data structures, and then launches
// the code function. 
//
////////////////////////////////////////////////////////////////////////////////
CgenClassTable::CgenClassTable(Classes classes, ostream& s) : nds(NULL) , str(s)
{
   //stringclasstag = 4;
   //intclasstag =    2; // see the assign_class_tags function
   //boolclasstag =   3;

   enterscope();
   if (cgen_debug) cout << "Building CgenClassTable" << endl;
   install_basic_classes();
   install_classes(classes);
   build_inheritance_tree();

   // Stores a mapping from class name to tag.
   name_to_tag = new SymbolTable<Symbol, int>(); 
   tag_to_name = new SymbolTable<int, Entry>();
   
   name_to_tag->enterscope();
   tag_to_name->enterscope();

   tagtracker = 0;
   assign_class_tags(root());

   label_id = 0;

   /* TRACKING CLASS METHODS AND ATTRIBUTES */
   class_attributes = new SymbolTable<Symbol, Features_class>();
   class_methods = new SymbolTable<Symbol, Features_class>();
   build_classes_attributes();
   build_classes_methods();


   if (cgen_debug) {
    cout << "Methods";
    dump_classes_methods(cout);
  }
   if (cgen_debug) {
    "Attributes";
    dump_classes_attributes(cout);

   } 

   code();
   exitscope();
}

void CgenClassTable::install_basic_classes() {

// The tree package uses these globals to annotate the classes built below.
  //curr_lineno  = 0;
  Symbol filename = stringtable.add_string("<basic class>");

//
// A few special class names are installed in the lookup table but not
// the class list.  Thus, these classes exist, but are not part of the
// inheritance hierarchy.
// No_class serves as the parent of Object and the other special classes.
// SELF_TYPE is the self class; it cannot be redefined or inherited.
// prim_slot is a class known to the code generator.
//
  addid(No_class,
	new CgenNode(class_(No_class,No_class,nil_Features(),filename),
			    Basic,this));
  addid(SELF_TYPE,
	new CgenNode(class_(SELF_TYPE,No_class,nil_Features(),filename),
			    Basic,this));
  addid(prim_slot,
	new CgenNode(class_(prim_slot,No_class,nil_Features(),filename),
			    Basic,this));

// 
// The Object class has no parent class. Its methods are
//        cool_abort() : Object    aborts the program
//        type_name() : Str        returns a string representation of class name
//        copy() : SELF_TYPE       returns a copy of the object
//
// There is no need for method bodies in the basic classes---these
// are already built in to the runtime system.
//
  install_class(
   new CgenNode(
    class_(Object, 
	   No_class,
	   append_Features(
           append_Features(
           single_Features(method(cool_abort, nil_Formals(), Object, no_expr())),
           single_Features(method(type_name, nil_Formals(), Str, no_expr()))),
           single_Features(method(copy, nil_Formals(), SELF_TYPE, no_expr()))),
	   filename),
    Basic,this));

// 
// The IO class inherits from Object. Its methods are
//        out_string(Str) : SELF_TYPE          writes a string to the output
//        out_int(Int) : SELF_TYPE               "    an int    "  "     "
//        in_string() : Str                    reads a string from the input
//        in_int() : Int                         "   an int     "  "     "
//
   install_class(
    new CgenNode(
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
	   filename),	    
    Basic,this));

//
// The Int class has no methods and only a single attribute, the
// "val" for the integer. 
//
   install_class(
    new CgenNode(
     class_(Int, 
	    Object,
            single_Features(attr(val, prim_slot, no_expr())),
	    filename),
     Basic,this));

//
// Bool also has only the "val" slot.
//
    install_class(
     new CgenNode(
      class_(Bool, Object, single_Features(attr(val, prim_slot, no_expr())), 
        filename), Basic,this));

//
// The class Str has a number of slots and operations:
//       val                                  ???
//       str_field                            the string itself
//       length() : Int                       length of the string
//       concat(arg: Str) : Str               string concatenation
//       substr(arg: Int, arg2: Int): Str     substring
//       
   install_class(
    new CgenNode(
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
	     filename),
        Basic,this));

}

////////////////////////////////////////////////////////////////////////////////
//
// CgenClassTable::install_class
// CgenClassTable::install_classes
//
// install_classes enters a list of classes in the symbol table.
//
////////////////////////////////////////////////////////////////////////////////
void CgenClassTable::install_class(CgenNodeP nd)
{
  Symbol name = nd->get_name();

  if (probe(name))
    {
      return;
    }

  nds = new List<CgenNode>(nd,nds); /* The class name is legal, so add it to the list of classes and the symbol table. */
  addid(name,nd);
}

void CgenClassTable::install_classes(Classes cs)
{
  for(int i = cs->first(); cs->more(i); i = cs->next(i))
    install_class(new CgenNode(cs->nth(i),NotBasic,this));
}

////////////////////////////////////////////////////////////////////////////////
//
// CgenClassTable::build_inheritance_tree
//
////////////////////////////////////////////////////////////////////////////////
void CgenClassTable::build_inheritance_tree()
{
  for(List<CgenNode> *l = nds; l; l = l->tl())
      set_relations(l->hd());
}

////////////////////////////////////////////////////////////////////////////////
//
// CgenClassTable::set_relations
//
// Takes a CgenNode and locates its, and its parent's, inheritance nodes
// via the class table.  Parent and child pointers are added as appropriate.
//
////////////////////////////////////////////////////////////////////////////////
void CgenClassTable::set_relations(CgenNodeP nd)
{
  CgenNode *parent_node = probe(nd->get_parent());
  nd->set_parentnd(parent_node);
  parent_node->add_child(nd);
}

void CgenNode::add_child(CgenNodeP n)
{
  children = new List<CgenNode>(n,children);
}

void CgenNode::set_parentnd(CgenNodeP p)
{
  assert(parentnd == NULL);
  assert(p != NULL);
  parentnd = p;
}

////////////////////////////////////////////////////////////////////////////////
//
// Add the attributes for each class to that class's
// enviornemnt. 
//
////////////////////////////////////////////////////////////////////////////////
void CgenClassTable::initialize_class_enviornment() {
  cout << "INITIALIZE CLASS ENVIRONMENT\n";
  // For each class
  for(List<CgenNode> *l = nds; l; l = l->tl()) {
    CgenNodeP curr_class = l->hd();

    // Initialize the environment
    curr_class->envr = new SymbolTable<Symbol, var_loc>();
    curr_class->envr->enterscope();
    Symbol class_name = curr_class->name;

    // Lookup the initialized attribute list
    Features attrs = class_attributes->lookup(class_name);
    if (cgen_debug) cout << "Enviornment for " << curr_class->name->get_string() << endl;
    
    // For each attribute
    for (int i = attrs->first(); attrs->more(i); i = attrs->next(i)) {
      Feature curr_attr = attrs->nth(i);
      var_loc* loc = new var_loc;
      loc->context = CLASS_CONTEXT;

      // DEFAULT_OBJFIELDS = 3 (type + size + dispTab ref)
      loc->offset = DEFAULT_OBJFIELDS + i;
      curr_class->envr->addid(curr_attr->get_name(), loc);
      if (cgen_debug) cout << "attribute " << curr_attr->get_name()->get_string() << " added with location " << DEFAULT_OBJFIELDS + i << endl;
    }
  }
}

////////////////////////////////////////////////////////////////////////////////
//
// Return the locals needed to evaluate the attributes of a class. 
//
////////////////////////////////////////////////////////////////////////////////
int CgenClassTable::compute_max_locals_for_class_init(CgenNodeP curr_class) {
  int num_locals_needed = 0;
  Features feats = curr_class->features;
  for (int i = feats->first(); feats->more(i); i = feats->next(i)) {
    Feature curr_feat = feats->nth(i);
    if (curr_feat->ismethod == false) {
      num_locals_needed +=  curr_feat->get_expr()->compute_max_locals() + 1;
    }
  }
  return num_locals_needed;
}

////////////////////////////////////////////////////////////////////////////////
//
// Gnerates the Class_init method for each class
// in the program.
// NOTE: it is assumed that the object being initialized
// is passed to this function in the self register ($s0)
// just as if the init method were defined for this object
// as a feature method. 
// 
// NOTE, by convention, every call to init will expect the 
// object to be initialized passed in ACC. 
//
// NOTE: Potential optimization. If the method is object,
// there is nothing to init, so simply return (don't need
// any assembly in this case). 
//
//  /* Then after the parent is initialized, you can output the assembly */
//  /* to initialize the attributes */
//  /* now generate the code to initialize each attribute */
//  /* First compute the number of locals that you need, then */
//  /* evaluate each expression, and assign the proper attribute */
//  /* in the object being initialized to the value returned by the expression */
//  /* the location of the attributes is determined as the offset in the self object */
//  /* as determined by the envr stored in the curr_class */
//
////////////////////////////////////////////////////////////////////////////////
void CgenClassTable::code_init_method(CgenNodeP curr_class) {
  str << "# Begin Emmitting code to generate initializer method for " << curr_class->name->get_string() << endl;
  curr_class->envr->enterscope();

  // NM: First, we output the label for the init method:
  // NM: 
  // NM: ClassName_init:

  emit_init_ref(curr_class->name, str); str << LABEL;
  /* first we set up the stack */

  // NM: 
  
  int num_locals_needed = compute_max_locals_for_class_init(curr_class);
  // num_locals_needed += NUM_REGISTERS_SAVED_BY_CALLER; // add 3 for the registers we will push
  int bytes_to_move_SP = num_locals_needed * WORD_SIZE;

  emit_store(FP, SAVE_FP_OFFSET, SP, str); // save callers FP register
  emit_store(SELF, SAVE_SELF_OFFSET, SP, str); // save the callers SELF register
  emit_store(RA, SAVE_RA_OFFSET, SP, str); // save the caller's RA register

  emit_move(FP, SP, str);
  emit_addiu(SP, SP, (bytes_to_move_SP * (-1)), str); // move the stack pointer down
  emit_move(SELF, ACC, str); // Move to new context, the object being initialized is calling Parent.init

  /* first we initialize the parent class, so long as we are not Object */
  if (strcmp(curr_class->name->get_string(), Object->get_string()) != 0) {
    CgenNodeP parent = curr_class->get_parentnd();
    char* parent_label = parent->name->get_string();
    str << JAL << parent_label << CLASSINIT_SUFFIX << endl;
    // note the parent init will place the object back into ACC. it is the same object as SELF. 
  }
  Features feats = curr_class->features;
  for (int i = feats->first(); feats->more(i); i = feats->next(i)) {
    Feature curr_feat = feats->nth(i);
    if (curr_feat->ismethod == false) {
      int offset = curr_class->envr->lookup(curr_feat->get_name())->offset;
      cout << "emitting code to update attribute " << curr_feat->get_name()->get_string() << " at offset " << offset << endl;
      curr_feat->get_expr()->code(str, (NUM_REGISTERS_SAVED_BY_CALLER), curr_class->envr, this, curr_class); //now ACC has value of intializer expression
      if (strcmp(curr_feat->get_expr()->get_type_name(), "no_expr") == 0) {
        if (is_int_str_bool(curr_feat->get_type()) == true) continue;
      }
      emit_store(ACC, offset, SELF, str);
    }
  }
  emit_move(ACC, SELF, str); // the return value, in this case, the object being initialized, gets put in ACC
  emit_addiu(SP, SP, bytes_to_move_SP, str); // move the stack pointer back up to its old spot before init method called/
  emit_load(FP, SAVE_FP_OFFSET, SP, str); // move saved FP back into FP.
  emit_load(SELF, SAVE_SELF_OFFSET, SP, str); // move saved SELF back into SELF. 
  emit_load(RA, SAVE_RA_OFFSET, SP, str); // move saved RA back into RA. 

  emit_return(str);
  curr_class->envr->exitscope();
  str << "# End Emmitting code to generate initializer method for " << curr_class->name->get_string() << endl;
}

////////////////////////////////////////////////////////////////////////////////
//
// Call the init method constructor for each class 
// node. 
//
////////////////////////////////////////////////////////////////////////////////

void CgenClassTable::code_init_methods() {
  for(List<CgenNode> *l = nds; l; l = l->tl()) {
    CgenNodeP curr_class = l->hd();
    code_init_method(curr_class);
  }
}

////////////////////////////////////////////////////////////////////////////////
//
// Emits the code for the method curr_feat
// defined in curr_class
//
// /* 1st compute the max number of locals needed */
// /* Move the stack down by that amount, and then */
// /* emit the assembly code that corresponds to the method body */
//
// THIS IS THE CALLEE
//
// Arguments are pushed by the caller, starting from the bottom of the 
// CALLER's stack frame, and then working upward (to higher addresses). 
// So, if the method signature is f(x, y), then the value of x is pushed
// by the caller to ($sp) + 4 bytes, and y is pushed at ($sp) + 8 bytes
// where ($sp) is the value of the stack pointer as seen by the caller. 
//
// By our convention, the CALLEE saves and restores the caller's 
// FP, SELF, and RA registers. These are saved in order starting from
// the top working down. The CALLEE then moves its FP to the just below
// the saved RA, which leaves 3 WORDS, or 12 bytes between the FP 
// of the caller and the first argument. 
//
// This means that the CALLEE will reference the params via the FP. 
// The first param will be at OFFSET_FROM_FP_TO_FIRST_PARAM + 0,
// subsequent params will be at 
// OFFSET_FROM_FP_TO_FIRST_PARAM + index, where index is that params
// index number in the formal list. 
// 
// The CALLEE must define the names of these variables in the CALLEE's 
// enviornment. 
//
////////////////////////////////////////////////////////////////////////////////
void CgenClassTable::code_method(CgenNodeP curr_class, Feature curr_feat) {
  str << "# Begin Emitting code for method " << curr_feat->get_name()->get_string() << endl;
  curr_class->envr->enterscope();

  emit_method_ref(curr_class->name, curr_feat->get_name(), str); str << LABEL;
  int num_locals_needed = curr_feat->get_expr()->compute_max_locals();
  num_locals_needed += NUM_REGISTERS_SAVED_BY_CALLER; // add 3 for the registers we will push
  int bytes_to_move_SP = num_locals_needed * WORD_SIZE;

  emit_store(FP, SAVE_FP_OFFSET, SP, str); // save callers FP register
  emit_store(SELF, SAVE_SELF_OFFSET, SP, str); // save the callers SELF register
  emit_store(RA, SAVE_RA_OFFSET, SP, str); // save the caller's RA register
  //emit_addiu(FP, SP, 0, str); // move FP down to SP
  emit_move(FP, SP, str); // move the frame pointer down. 
  emit_addiu(SP, SP, (bytes_to_move_SP * (-1)), str); // move the stack pointer down
  emit_move(SELF, ACC, str); // Move to new context, the object calling this method is the new self. 

  Formals formals = curr_feat->get_formals();
  int num_params = formals->len();
  for (int i = formals->first(); formals->more(i); i = formals->next(i)) {
    Formal curr_formal = formals->nth(i);
    int offset = num_params - i; 
    var_loc* loc = new var_loc;
    loc->context = FEATURE_CONTEXT;
    loc->offset = offset; // This offset will be relative to the FP in the callee's frame. Simply add offset to FP to get the adress of these params. 
    curr_class->envr->addid(curr_formal->get_name(), loc);
  }
  curr_feat->get_expr()->code(str, (NUM_REGISTERS_SAVED_BY_CALLER), curr_class->envr, this, curr_class); // now the return Object of this expression is in ACC

  int num_param_bytes = num_params * WORD_SIZE;
  emit_addiu(SP, SP, bytes_to_move_SP, str); // move the stack pointer back up to its old spot function invoked. 
  emit_load(FP, SAVE_FP_OFFSET, SP, str); // move saved FP back into FP.
  emit_load(SELF, SAVE_SELF_OFFSET, SP, str); // move saved SELF back into SELF. 
  emit_load(RA, SAVE_RA_OFFSET, SP, str); // move saved RA back into RA.
  emit_addiu(SP, SP, num_param_bytes, str); // move the stack pointer back up accounting for the params. 

  emit_return(str);
  curr_class->envr->exitscope();
  str << "# End Emitting code for method " << curr_feat->get_name()->get_string() << endl;
}

////////////////////////////////////////////////////////////////////////////////
//
// Call the code_method function for each method
// defined for this class. This means that we are
// defining the code for each method label defined 
//
////////////////////////////////////////////////////////////////////////////////
void CgenClassTable::code_class_methods() {
  for(List<CgenNode> *l = nds; l; l = l->tl()) {
    CgenNodeP curr_class = l->hd();
    if (curr_class->basic() == Basic) {
      Features feats = curr_class->features;
      for (int i = feats->first(); feats->more(i); i = feats->next(i)) {
        Feature curr_feat = feats->nth(i);
        if (curr_feat->ismethod) {
          code_method(curr_class, curr_feat); 
        }
      }
    }
  }
}

////////////////////////////////////////////////////////////////////////////////
//
// Returns the offset in the disp table given
// by type of the method named name. 
//
////////////////////////////////////////////////////////////////////////////////
int CgenClassTable::compute_offset_in_disp_table(Symbol name, Symbol type) {

  Features methods = class_methods->lookup(type);
  for (int i = methods->first(); methods->more(i); i = methods->next(i)) {
    if (strcmp(name->get_string(), methods->nth(i)->get_name()->get_string()) == 0) {
      return i;
    }
  }
  return 0;
}

////////////////////////////////////////////////////////////////////////////////
//
// Returns the tag that corresponds to type_name.
// 
// The symbol table returns a pointer to data, so derefernce it. 
//
////////////////////////////////////////////////////////////////////////////////
int CgenClassTable::get_tag_for_type(Symbol type_name) {
  if (name_to_tag->lookup(type_name) == NULL) {
    cout << "Invalid type name in get_tag_for_type. This should never happen, so compiler has a bug." << endl;
  }
  return *(name_to_tag->lookup(type_name));
}

////////////////////////////////////////////////////////////////////////////////
//
// Returns true if the type is INT, BOOL, or String
// false otherwise. 
//
////////////////////////////////////////////////////////////////////////////////
bool CgenClassTable::is_int_str_bool(Symbol type) {
  if (strcmp(type->get_string(), Int->get_string()) == 0) return true;
  if (strcmp(type->get_string(), Bool->get_string()) == 0) return true;
  if (strcmp(type->get_string(), Str->get_string()) == 0) return true;
  return false;
}

////////////////////////////////////////////////////////////////////////////////
//
// Code generation launcher. Consolidates
// the functions that generate mips to str.  
//
// Starter code comment: prototype objects, 
// class_nameTab, dispatch tables, object initializer
// the class methods...
//
////////////////////////////////////////////////////////////////////////////////
void CgenClassTable::code()
{
  if (cgen_debug) cout << "coding global data" << endl;
  code_global_data();

  if (cgen_debug) cout << "choosing gc" << endl;
  code_select_gc();

  if (cgen_debug) cout << "coding constants" << endl;
  code_constants();

  if (cgen_debug) cout << "coding prototype objects" << endl;
  code_protos();

  if (cgen_debug) cout << "coding name table" << endl;
  code_name_table();

  if (cgen_debug) cout << "coding object table" << endl;
  code_object_table();

  if (cgen_debug) cout << "coding dispatch table" << endl;
  code_dispatch_table();

  if (cgen_debug) cout << "coding global text" << endl;
  code_global_text();

  if (cgen_debug) cout << "Intialize the envionment for each class" << endl;
  initialize_class_enviornment();

  if (cgen_debug) cout << "Code init methods" << endl;
  code_init_methods();

  if (cgen_debug) cout << "Code the class methods" << endl;
  code_class_methods();
}

////////////////////////////////////////////////////////////////////////////////
//
// Return the CgenNode associated with Object, as Object is the root of the 
// class inheritance tree. 
//
////////////////////////////////////////////////////////////////////////////////
CgenNodeP CgenClassTable::root()
{
   return probe(Object);
}

////////////////////////////////////////////////////////////////////////////////
//
// CgenNode methods
//
////////////////////////////////////////////////////////////////////////////////

CgenNode::CgenNode(Class_ nd, Basicness bstatus, CgenClassTableP ct) :
   class__class((const class__class &) *nd),
   parentnd(NULL),
   children(NULL),
   basic_status(bstatus)
{ 
   stringtable.add_string(name->get_string());       
   // Add class name to string table
}


////////////////////////////////////////////////////////////////////////////////
//
//   Fill in the following methods to produce code for the
//   appropriate expression.  You may add or remove parameters
//   as you wish, but if you do, remember to change the parameters
//   of the declarations in `cool-tree.h'  Sample code for
//   constant integers, strings, and booleans are provided.
//
// 1st, evalue the expression. Value will be in ACC
// 2nd, get the location of the variable we are assigning to. 
// 3rd, place ACC in the correct location.
//
//  s << SW << source_reg << " " << offset * WORD_SIZE << "(" << dest_reg << ")" << endl;
//
////////////////////////////////////////////////////////////////////////////////

void assign_class::code(ostream &s, int temp_start, SymbolTable<Symbol, var_loc>* envr, CgenClassTableP table, CgenNodeP curr_class) {
  s << "# Begin Code assign expression at line number " << get_line_number() << endl;
  expr->code(s, temp_start, envr, table, curr_class); // value of this expression is now in ACC. 

  // NM: value of the expression being assigned to an object is in $a0

  var_loc* loc = envr->lookup(name);
  if (loc == NULL) {
    cout << "Could not find identifier " << name->get_string() << ". This should never happen." << endl;
  }

  int offset = loc->offset;

  // NM: If this is the case, we must be looking at an attribute
  // NM: attributes are stored at POSTIIVE INDICES off of $s0
  if (strcmp(loc->context, CLASS_CONTEXT) == 0) {
    cout << "Assigning attribute object" << endl;
    emit_store(ACC, offset, SELF, s);

  // NM: If this is the case, we must be looking at a parameter to a method
  // NM: method parameters are stored at positive offsets off of the $fp
  } else if (strcmp(loc->context, FEATURE_CONTEXT) == 0) {
    cout << "Assigning paramter object" << endl;
    emit_store(ACC, offset, FP, s);

  // NM: If this is the case, we are looking at a parameter declared in a 
  // NM: let statement or case statement. This means we're looking at objects
  // NM: in the temporary region, which is below $fp (at a negative offset)
  } else if (strcmp(loc->context, LOCAL_CONTEXT) == 0) {
    cout << "Assigning local object" << endl;
    emit_store(ACC, (-1)*offset, FP, s);
  }

  // NM: Stack diagram
  // NM: 
  // NM: |       |     <- { vars in this region are parameters }
  // NM: |-------|  <- fp
  // NM: |-------|     <- saved stuff
  // NM: |       |     <- { vars in this region are locals / created in exprs }
  // NM: |-------|  <- sp
  // NM: |       |


  // NM: code out of this method should look something like this:
  // NM: 
  // NM: <code for expression>
  // NM: sw $a0 offset($sp)
  // NM: 
  // NM: 
  // NM: or something like this:
  // NM: 
  // NM: <code for expression>
  // NM: sw $a0 offset($fp)

  s << "# End Code assign expression." << endl;
}

int assign_class::compute_max_locals() {
  return expr->compute_max_locals();
}

////////////////////////////////////////////////////////////////////////////////
//
// Static disaptch code gen. Very similiar to dispatch code gen, only now
// we know the type to dispatch to at compile time. 
//
////////////////////////////////////////////////////////////////////////////////
void static_dispatch_class::code(ostream &s, int temp_start, SymbolTable<Symbol, var_loc>* envr, CgenClassTableP table, CgenNodeP curr_class) {
  s << "# Begin Code static dispatch expression at line number " << get_line_number() <<  endl;
  int num_params = actual->len();
  

  // NM: for each parameter, push that parameter on the stack after evaluating it
  // NM: 
  // NM: should look something like this for each expression:
  // NM: 
  // NM: <code for expression>      # result stored in $a0
  // NM: sw $a0 0($sp)              # put the result at $sp
  // NM: addiu $sp $sp -4           # move $sp

  for (int i = actual->first(); actual->more(i); i = actual->next(i)) {
    Expression curr_param = actual->nth(i);
    curr_param->code(s, temp_start, envr, table, curr_class); // Now the return value for this argument is in ACC. 
    emit_push(ACC, s);
  }

  // NM: Evaluate e0 -> the result is stored in $a0
  expr->code(s, temp_start, envr, table, curr_class); // we know the value of e0 is now in ACC. This is the object invoking the dispatch. 
  int bypass_abort_label = table->label_id;
  table->label_id++;
  
  // NM: If $a0 is null, keep going and go into the abort code

  emit_bne(ACC, ZERO, bypass_abort_label, s); // skip to the bypass abort label if ACC is not zero. 
  
  // NM: Here, the object is void. :(
  // NM: 
  // NM: Code should look something like this:
  // NM: 
  // NM: lw $a0 str_constX
  // NM: li $T1 Y
  // NM: jal _dispatch_abort

  /* here we output the abort routine. Good dispatch will jump over this */
  emit_load_string(ACC, stringtable.lookup_string(curr_class->filename->get_string()), s); // filename in ACC
  emit_load_imm(T1, get_line_number(), s); // load the immediate value of the line number into T1;
  emit_jal(DISPATCH_ABORT, s);

  // NM: Here, the object is not void. Yay!
  // NM: 
  // NM: Code should look something like this:
  // NM: 
  // NM: labelZ:
  // NM: lw $t1 8($a0)    # read in the dispatch table from e0
  // NM: lw $t1 B($t1)    # read in the correct method from the dispatch table
  // NM: jalr $t1         # jump to method def

  /* if we get to here in the code, then the dispatch is valid */
  emit_label_def(bypass_abort_label, s);
  emit_load(T1, DISPTABLE_OFFSET, ACC, s); // else, we load the address of the dispatch table for this class into a temporary T1. 
  
  // NM: Here, type_name is the type given statically for the dispatch. 

  if (strcmp(type_name->get_string(), SELF_TYPE->get_string()) == 0) type_name = curr_class->name;
  int offset_in_disp_tab = table->compute_offset_in_disp_table(name, type_name);
  cout << " loaded dispatch for class " << type_name->get_string() << "at offset " << offset_in_disp_tab << endl;
  emit_load(T1, offset_in_disp_tab, T1, s);
  emit_jalr(T1, s);
  s << "# End Code static dispatch expression." << endl;
}

int static_dispatch_class::compute_max_locals() {
  int sum = 0;
  sum += expr->compute_max_locals();
  for (int i = actual->first(); actual->more(i); i = actual->next(i)) {
    Expression curr_expr = actual->nth(i);
    sum += curr_expr->compute_max_locals() + 1;
  }
  return sum;
}

////////////////////////////////////////////////////////////////////////////////
//
// This the caller. Need to push arguments to function starting at stack
// pointer and working up. We know we will have space because we computed
// the number of locals at the start of the method def for which we called
// this function. 
// 
// Also, do not need to touch the envr here, because the callee (method defintion
// will have done that for its own envr, as the envr here is not the same. In 
// other words, the callee should not know about any of the variables that are
// visible from the caller. The callee can access values that the caller has access
// to, but the callee defines its names for these variable via the formals list.  
//
// For dispatch abort in void, expect the filename in ACC and line number in T1
// according to the trap-handler. 
//
////////////////////////////////////////////////////////////////////////////////
void dispatch_class::code(ostream &s, int temp_start, SymbolTable<Symbol, var_loc>* envr, CgenClassTableP table, CgenNodeP curr_class) {
  s << "# Begin Code disptach expression at line number " << get_line_number() <<  endl;

  /* ** STORING PARAMETERS ** */

  int num_params = actual->len();
  for (int i = actual->first(); actual->more(i); i = actual->next(i)) {
    Expression curr_param = actual->nth(i);
    curr_param->code(s, temp_start, envr, table, curr_class); // Now the return value for this argument is in ACC. 
    emit_push(ACC, s);
  }

  /* ** GETTING THE OBJECT UPON WHICH WE DISPATCH ** */

  expr->code(s, temp_start, envr, table, curr_class); // we know the value of e0 is now in ACC. This is the object invoking the dispatch. 
  Symbol e0_type = expr->get_type();
  int bypass_abort_label = table->label_id;
  table->label_id++;
  emit_bne(ACC, ZERO, bypass_abort_label, s); // skip to the bypass abort label if ACC is not zero. 

  /* ** DISPATCH UPON A NULL OBJECT ** */

  /* here we output the abort routine. Good dispatch will jump over this */
  emit_load_string(ACC, stringtable.lookup_string(curr_class->filename->get_string()), s); // filename in ACC
  emit_load_imm(T1, get_line_number(), s); // load the immediate value of the line number into T1;
  emit_jal(DISPATCH_ABORT, s);

  /* ** VALID DISPATCH ** */

  /* if we get to here in the code, then the dispatch is valid */
  emit_label_def(bypass_abort_label, s);
  emit_load(T1, DISPTABLE_OFFSET, ACC, s); // else, we load the address of the dispatch table for this class into a temporary T1. 
  if (strcmp(e0_type->get_string(), SELF_TYPE->get_string()) == 0) e0_type = curr_class->name;
  
  int offset_in_disp_tab = table->compute_offset_in_disp_table(name, e0_type);
  
  cout << " loaded dispatch for class " << e0_type->get_string() << "at offset " << offset_in_disp_tab << endl;
  emit_load(T1, offset_in_disp_tab, T1, s);
  emit_jalr(T1, s);
  s << "# End Code disptach expression." << endl;
}

int dispatch_class::compute_max_locals() {
  int sum = 0;
  sum += expr->compute_max_locals();
  for (int i = actual->first(); actual->more(i); i = actual->next(i)) {
    Expression curr_expr = actual->nth(i);
    sum += curr_expr->compute_max_locals() + 1;
  }
  return sum;
}

////////////////////////////////////////////////////////////////////////////////
//
// 
//
////////////////////////////////////////////////////////////////////////////////
void cond_class::code(ostream &s, int temp_start, SymbolTable<Symbol, var_loc>* envr, CgenClassTableP table, CgenNodeP curr_class) {
  s << "# Begin Code cond expression at line number " << get_line_number() <<  endl;
  int false_label = table->label_id;
  table->label_id++;
  int end_label = table->label_id;
  table->label_id++;
  pred->code(s, temp_start, envr, table, curr_class); // evaluate the predicate. Branch to false if false. Otherwise fall through to true. 
  emit_load(T2, BOOL_VAL_OFFSET, ACC, s); // store the value of the boolen in a temporary register. 
  emit_beq(T2, ZERO, false_label, s); // if the boolean is false (0), jump to the false label and execute the else->expr. 
  then_exp->code(s, temp_start, envr, table, curr_class); // if the pred is true, evaluate the then expression. Result now stored in ACC
  emit_branch(end_label, s); // jump over the false branch and return with the value of then_expr in ACC. 
  emit_label_def(false_label, s); // output the false label. 
  else_exp->code(s, temp_start, envr, table, curr_class); // if the predicate is false, evaluate the else expression. Result now stored in ACC. 
  emit_label_def(end_label, s); // the end of the expression. Result is in ACC. 
  s << "# End Code cond expression." << endl;
}

int cond_class::compute_max_locals() {
  int num1 = pred->compute_max_locals();
  int num2 = then_exp->compute_max_locals();
  int num3 = else_exp->compute_max_locals();
  // 2 extra to store results of pred and then exp when evaling else exp
  return num1 + num2 + num3 + 2;
}

////////////////////////////////////////////////////////////////////////////////
//
// 1st, generate a unique id for the control flow labels. 
// 2nd, place the begin label at the start of the loop code. 
// 3rd, now that we are in the loop, evalue expr. 
//
// If the predicate is false, the loop terminates, and void is returned,
// page 11 in manual. 
//
// { s << LI << dest_reg << " " << val << endl; }
//
////////////////////////////////////////////////////////////////////////////////
void loop_class::code(ostream &s, int temp_start, SymbolTable<Symbol, var_loc>* envr, CgenClassTableP table, CgenNodeP curr_class) {
  s << "# Begin Code loop expression at line number " << get_line_number() << endl;
  int loop_begin_label = table->label_id;
  table->label_id++;
  int loop_end_label = table->label_id;
  table->label_id++;
  emit_label_def(loop_begin_label, s); // this is the start of the loop
  pred->code(s, temp_start, envr, table, curr_class); // evaluate the loop predicate. Result stored in ACC. Note, result is a BOOL object. Need to get the value of the bool. 
  emit_load(T1, BOOL_VAL_OFFSET, ACC, s); // load the value of the Bool object returned by the predicate into T1. 
  emit_beq(T1, ZERO, loop_end_label, s); // if the predicate evaluates to false, jump to the end branch. otherwise, evaluate the loop body.
  body->code(s, temp_start, envr, table, curr_class);
  emit_branch(loop_begin_label, s); // after executing th body of the loop, go back and evaluate the predicat. 
  emit_label_def(loop_end_label, s); // this is the end of the loop label
  emit_load_imm(ACC, VOID, s); // void is returned when the loop terminates. 
  s << "# End Code loop expression." << endl;
}

int loop_class::compute_max_locals() {
  int num1 = pred->compute_max_locals();
  int num2 = body->compute_max_locals();
  return num1 + num2 + 1;
}

////////////////////////////////////////////////////////////////////////////////
//
// 1st, evaluate e0. If it evaluates to void, this is a runtime error. 
//
////////////////////////////////////////////////////////////////////////////////
void typcase_class::code(ostream &s, int temp_start, SymbolTable<Symbol, var_loc>* envr, CgenClassTableP table, CgenNodeP curr_class) {
  s << "# Begin Code typecase expression at line number " << get_line_number() <<  endl;
  expr->code(s, temp_start, envr, table, curr_class); // e0 object pointer now in ACC
  emit_move(T3, ACC, s); // move the pointer to e0 object into T3. T3 now contains pointer to e0 object.

  int success_label = table->label_id; table->label_id++;
  int* sorted_branch_class_tags = table->get_sorted_tags(cases, table); // get the tags of the branches in sorted order. 

  int curr_branch_label = table->label_id; table->label_id++; // a current label in the case struct. 

  /* check for void e0 */
  emit_bne(ACC, ZERO, curr_branch_label, s); // if not void, bypass the abort call.
  emit_load_string(ACC, stringtable.lookup_string(curr_class->filename->get_string()), s); // filename in ACC
  emit_load_imm(T1, get_line_number(), s); // line number in T1
  emit_jal(CASE_ABORT2, s); // abort with _case_abort2

  for (int i = 0; i < cases->len(); i++) { // i is the index in the sorted_tags array
    for (int j = cases->first(); cases->more(j); j = cases->next(j)) {
      Symbol curr_branch_type = cases->nth(j)->get_type_decl();
      int curr_tag = *(table->name_to_tag->lookup(curr_branch_type));
      if (sorted_branch_class_tags[i] == curr_tag) {
        envr->enterscope(); // each branch gets its own scope. 

        emit_label_def(curr_branch_label, s); // set the label of the current branch. 
        curr_branch_label = table->label_id++;
        emit_load(T2, TAG_OFFSET, T3, s); // load the tag number of the class of e0 into T2. T2 now contains the tag of the current class. 

        int tag_of_lowest_child = table->get_lowest_child_tag_for_class(curr_branch_type); // counter intuitive, but the tag_of_the_lowest_child will be a high number. 

        emit_blti(T2, curr_tag, curr_branch_label, s);
        emit_bgti(T2, tag_of_lowest_child, curr_branch_label, s); 
        
        // if we get here in the assembly, then this is the branch we evaluate. 
        // first, add the branch identifier to the enviornment. 
        var_loc* loc = new var_loc;
        loc->context = LOCAL_CONTEXT;
        if (temp_start < 0) {
           cout << "Out of local space. This should never happen." << endl;
        }
        loc->offset = temp_start;
        envr->addid(cases->nth(j)->get_id(), loc);
        emit_store(T3, (-1)*loc->offset, FP, s); // now bind the value of e0 to the identifier of this branch
        // finally, evaluate the epression of this branch, with the value of e0 boud to the identifier of this branch. 
        cases->nth(j)->get_branch_expr()->code(s, temp_start + 1, envr, table, curr_class);

        emit_branch(success_label, s); // if we do not jump on the blti and bgti calls, then we fall through and jump to the success. 
        envr->exitscope(); // leave the branch scope. 
        break;
      }
    }
  }
  emit_label_def(curr_branch_label, s); // we jump here if we do not find a match above. so we load class name into ACC, and call _cond_abort
  emit_load_address(ACC, CLASSNAMETAB, s); // move the address of the class_nameTab into ACC.
  emit_load(T2, TAG_OFFSET, T3, s); // load the tag number of the class of e0 into T2. T2 now contains the tag of the current class. 
  emit_load_imm(T1, WORD_SIZE, s); // load 4 into T1
  emit_mul(T2, T2, T1, s); // T1 contains the immediate 4. T2 contains the offset in the table. Need to move forward by word size. 
  emit_addu(ACC, ACC, T2, s); // add offset contained in T2 to the address of the class_nameTab in ACC. store result in ACC. ACC now contains the address of the string constant that contains the name of the class of e0. 
  emit_jal(CASE_ABORT, s); // could not find a matching branch, so abort. Only requires that ACC contain the class Name of the object e0

  emit_label_def(success_label, s); // jumps to here on successful evaluation of case, bypassing the _case_abort
  s << "# End Code typecase expression." << endl;
}

int typcase_class::compute_max_locals() {
  int sum = 0;
  sum += expr->compute_max_locals();
  for (int i = cases->first(); cases->more(i); i++) {
    Case curr_case = cases->nth(i);
    sum += curr_case->compute_max_locals();
  }
  return sum;
}

Symbol branch_class::get_type_decl() { return type_decl; };
Symbol branch_class::get_id() { return name; };
Expression branch_class::get_branch_expr() { return expr; };

int CgenClassTable::get_lowest_child_tag_for_class(Symbol curr_branch_type) {
  CgenNodeP class_node = get_class_node_for_type(curr_branch_type);
  while (true) {
    List<CgenNode>* children = class_node->get_children();
    if (children == NULL) {
      return *(name_to_tag->lookup(class_node->get_name()));
    }
    CgenNodeP right_most_child = NULL;
    for (List<CgenNode>* l = children; l != NULL; l = l->tl()) {
      right_most_child = l->hd();
    }
    class_node = get_class_node_for_type(right_most_child->get_name()); //redundant, but makes the algorithm clear. 
  }
  return -1;//should never return -1
}

CgenNodeP CgenClassTable::get_class_node_for_type(Symbol type) {
  for (List<CgenNode>* l = nds; l != NULL; l = l->tl()) {
    CgenNodeP curr_class = l->hd();
    if (strcmp(curr_class->get_name()->get_string(), type->get_string()) == 0) return curr_class;
  }
  return NULL;
}

int* CgenClassTable::get_sorted_tags(Cases cases, CgenClassTableP table) {
  int* sorted_tags = new int[cases->len()];
  // first, add all tags to the array
  for (int i = cases->first(); cases->more(i); i = cases->next(i)) {
    Symbol case_type = cases->nth(i)->get_type_decl();
    sorted_tags[i] = *(table->name_to_tag->lookup(case_type));
  }
  // now sort the tags in ascending order using 
  // sort algorithm found here: http://www.cprogramming.com/tutorial/computersciencetheory/sorting1.html
  for (int i = 0; i < cases->len(); i++) {
    for (int j = 0; j < cases->len() - 1; j++) {
      if (sorted_tags[j] < sorted_tags[ j + 1 ]) {
        int temp = sorted_tags[j + 1];
        sorted_tags[j + 1] = sorted_tags[j];
        sorted_tags[j] = temp;
      }
    }
  }
  return sorted_tags;
}

////////////////////////////////////////////////////////////////////////////////
//
// Blocks, simply evaluate in order. 
//
////////////////////////////////////////////////////////////////////////////////
void block_class::code(ostream &s, int temp_start, SymbolTable<Symbol, var_loc>* envr, CgenClassTableP table, CgenNodeP curr_class) {
  s << "# Begin Code block epression at line number " << get_line_number() <<  endl;
  for (int i = body->first(); body->more(i); i = body->next(i)) {
    Expression curr_exp = body->nth(i);
    curr_exp->code(s, temp_start, envr, table, curr_class);
  }
  s << "# End Code block epression." << endl;
}

int block_class::compute_max_locals() {
  int sum = 0;
  for (int i = body->first(); body->more(i); i++) {
    Expression curr_expr = body->nth(i);
    sum += curr_expr->compute_max_locals();
  }
  return sum;
}

////////////////////////////////////////////////////////////////////////////////
//
// 1st, evaluate the initialization without introducing the new variable. 
// check for no inializer statement.  
//
////////////////////////////////////////////////////////////////////////////////
void let_class::code(ostream &s, int temp_start, SymbolTable<Symbol, var_loc>* envr, CgenClassTableP table, CgenNodeP curr_class) {
  envr->enterscope(); // enter a new scope as we are introducing a new variable here. 
  s << "# Begin Code let expression at line number " << get_line_number() <<  endl;

  if (strcmp(init->get_type_name(), "no_expr") == 0) {
    if (table->is_int_str_bool(type_decl)) {
      s << LA << ACC  << " " << type_decl->get_string() << PROTOBJ_SUFFIX << endl; // load the address of the protoype object into ACC
      emit_jal(OBJECT_DOT_COPY, s); // call object.copy on the protoype object in ACC, which will make a new object in the heap, and return a pointer to it in ACC
    } else {
      emit_move(ACC, ZERO, s);
    }
  } else {
    init->code(s, temp_start, envr, table, curr_class); // otherwise, the intialization of the new variable being declared is the value of the init, which is stored in ACC if we evaluate init. 
  }

   var_loc* loc = new var_loc;
   loc->context = LOCAL_CONTEXT;
   if (temp_start < 0) {
     cout << "Out of local space. This should never happen." << endl;
   }
   loc->offset = temp_start;
   envr->addid(identifier, loc);

   emit_store(ACC, (-1)*loc->offset, FP, s); // now store the initializer value in the stack slot for this newly decalred variable. 
   body->code(s, temp_start + 1, envr, table, curr_class); // now evaluate the body of the let, with the newly declared enviornment. result will be in ACC, which is the return value of this expression. 

   envr->exitscope(); // once we finish processing this let, we don't want to know about the locally declared variable anymore. 
    s << "# End Code let expression." << endl;
}

int let_class::compute_max_locals() {
  int num1 = init->compute_max_locals();
  int num2 = body->compute_max_locals();
  return num1 + num2 + 1;
}

////////////////////////////////////////////////////////////////////////////////
//
// 1st evaluate e1. 
// 2nd evaluate e2. 
// 3rd, add their values and make the outcome a new object and return that. 
//
////////////////////////////////////////////////////////////////////////////////
void plus_class::code(ostream &s, int temp_start, SymbolTable<Symbol, var_loc>* envr, CgenClassTableP table, CgenNodeP curr_class) {
  s << "# Begin Code plus expression at line number " << get_line_number() << endl;
  e1->code(s, temp_start, envr, table, curr_class); // evaluate e1. Value of e1 in ACC
  emit_store(ACC, (-1)*temp_start, FP, s); // store e1 on stack
  e2->code(s, temp_start + 1, envr, table, curr_class); // evaluate e2. Value of e2 in ACC. 
  emit_load(T1, (-1)*temp_start, FP, s); // load the value of e1 saved on stack into T1
  emit_fetch_int(T2, T1, s); // move the numerical value of the e0 int into T2
  emit_fetch_int(T3, ACC, s); // move the numerical value of e2 into T3
  emit_add(T2, T2, T3, s); // T2 now contains T2 + T3
  emit_jal(OBJECT_DOT_COPY, s); // ACC contains an int object, which is e2. Simply copy it, and then update the value to T3's value
  emit_store(T2, DEFAULT_OBJFIELDS, ACC, s); // move the value of T3 into the int val slot of ACC. ACC is now the correct return value. 
  s << "# End Code plus expression." << endl;
}

int plus_class::compute_max_locals() {
  int num1 = e1->compute_max_locals();
  int num2 = e2->compute_max_locals();
  return num1 + num2 + 1;
}

////////////////////////////////////////////////////////////////////////////////
//
// Same as plus, only we use emit_sub instead of emit_add. 
//
////////////////////////////////////////////////////////////////////////////////
void sub_class::code(ostream &s, int temp_start, SymbolTable<Symbol, var_loc>* envr, CgenClassTableP table, CgenNodeP curr_class) {
  s << "# Begin Code sub expression at line number " << get_line_number() <<  endl;
  e1->code(s, temp_start, envr, table, curr_class); // evaluate e1. Value of e1 in ACC
  emit_store(ACC, (-1)*temp_start, FP, s); // store e1 on stack
  e2->code(s, temp_start + 1, envr, table, curr_class); // evaluate e2. Value of e2 in ACC. 
  emit_load(T1, (-1)*temp_start, FP, s); // load the value of e1 saved on stack into T1
  emit_fetch_int(T2, T1, s); // move the numerical value of the e0 int into T2
  emit_fetch_int(T3, ACC, s); // move the numerical value of e2 into T3
  emit_sub(T2, T2, T3, s); // T2 now contains T2 - T3
  emit_jal(OBJECT_DOT_COPY, s); // ACC contains an int object, which is e2. Simply copy it, and then update the value to T3's value
  emit_store(T2, DEFAULT_OBJFIELDS, ACC, s); // move the value of T3 into the int val slot of ACC. ACC is now the correct return value.
  s << "# End Code sub expression." << endl;
}

int sub_class::compute_max_locals() {
  int num1 = e1->compute_max_locals();
  int num2 = e2->compute_max_locals();
  return num1 + num2 + 1;
}

////////////////////////////////////////////////////////////////////////////////
//
// Same as plus, only we do emit_mul instead of add. 
//
////////////////////////////////////////////////////////////////////////////////
void mul_class::code(ostream &s, int temp_start, SymbolTable<Symbol, var_loc>* envr, CgenClassTableP table, CgenNodeP curr_class) {
  s << "# Begin Code mul expression at line number " << get_line_number() <<  endl;
  e1->code(s, temp_start, envr, table, curr_class); // evaluate e1. Value of e1 in ACC
  emit_store(ACC, (-1)*temp_start, FP, s); // store e1 on stack
  e2->code(s, temp_start + 1, envr, table, curr_class); // evaluate e2. Value of e2 in ACC. 
  emit_load(T1, (-1)*temp_start, FP, s); // load the value of e1 saved on stack into T1
  emit_fetch_int(T2, T1, s); // move the numerical value of the e0 int into T2
  emit_fetch_int(T3, ACC, s); // move the numerical value of e2 into T3
  emit_mul(T2, T2, T3, s); // T2 now contains T2 * T3
  emit_jal(OBJECT_DOT_COPY, s); // ACC contains an int object, which is e2. Simply copy it, and then update the value to T3's value
  emit_store(T2, DEFAULT_OBJFIELDS, ACC, s); // move the value of T3 into the int val slot of ACC. ACC is now the correct return value.
  s << "# End Code mul expression." << endl;
}

int mul_class::compute_max_locals() {
  int num1 = e1->compute_max_locals();
  int num2 = e2->compute_max_locals();
  return num1 + num2 + 1;
}

////////////////////////////////////////////////////////////////////////////////
//
// Same as plus, only we do emit_div instead of add. 
//
////////////////////////////////////////////////////////////////////////////////
void divide_class::code(ostream &s, int temp_start, SymbolTable<Symbol, var_loc>* envr, CgenClassTableP table, CgenNodeP curr_class) {
  s << "# Begin Code divide expression at line number " << get_line_number() <<  endl;
  e1->code(s, temp_start, envr, table, curr_class); // evaluate e1. Value of e1 in ACC
  emit_store(ACC, (-1)*temp_start, FP, s); // store e1 on stack
  e2->code(s, temp_start + 1, envr, table, curr_class); // evaluate e2. Value of e2 in ACC. 
  emit_load(T1, (-1)*temp_start, FP, s); // load the value of e1 saved on stack into T1
  emit_fetch_int(T2, T1, s); // move the numerical value of the e0 int into T2
  emit_fetch_int(T3, ACC, s); // move the numerical value of e2 into T3
  emit_div(T2, T2, T3, s); // T2 now contains T2 / T3
  emit_jal(OBJECT_DOT_COPY, s); // ACC contains an int object, which is e2. Simply copy it, and then update the value to T3's value
  emit_store(T2, DEFAULT_OBJFIELDS, ACC, s); // move the value of T3 into the int val slot of ACC. ACC is now the correct return value.
  s << "# End Code divide expression." << endl;
}

int divide_class::compute_max_locals() {
  int num1 = e1->compute_max_locals();
  int num2 = e2->compute_max_locals();
  return num1 + num2 + 1;
}

////////////////////////////////////////////////////////////////////////////////
//
// Neg code gen. 
//
////////////////////////////////////////////////////////////////////////////////
void neg_class::code(ostream &s, int temp_start, SymbolTable<Symbol, var_loc>* envr, CgenClassTableP table, CgenNodeP curr_class) {
  s << "# Begin Code neg expression at line number " << get_line_number() <<  endl;
  e1->code(s, temp_start, envr, table, curr_class); // value now in ACC. ACC is an Int object
  emit_fetch_int(T1, ACC, s); // get the value of the int and put it in T1
  emit_neg(T1, T1, s); // perform the neg operation on the value. 
  emit_store(T1, (-1)*temp_start, FP, s); // store the neg'd value on the stack, as T1 might be corrupted. 
  emit_jal(OBJECT_DOT_COPY, s); // copy the int obect in ACC as a result of evaluating e1. 
  emit_load(T1, (-1)*temp_start, FP, s); // load the neg'd value saved on stack back into T1
  emit_store(T1, DEFAULT_OBJFIELDS, ACC, s); // load the neg'd value into the newly created object's int value slot. Value to return is now in ACC. 
  s << "# End Code neg expression." << endl;
}

int neg_class::compute_max_locals() {
  return e1->compute_max_locals();
}

////////////////////////////////////////////////////////////////////////////////
//
// Lt code gen. 
//
////////////////////////////////////////////////////////////////////////////////
void lt_class::code(ostream &s, int temp_start, SymbolTable<Symbol, var_loc>* envr, CgenClassTableP table, CgenNodeP curr_class) {
  s << "# Begin Code lt expression at line number " << get_line_number() <<  endl;
  e1->code(s, temp_start, envr, table, curr_class); // evaluate e1. value of e1 in ACC
  emit_store(ACC, (-1)*temp_start, FP, s); // store e1 on stack
  e2->code(s, temp_start + 1, envr, table, curr_class); // evaluate e2. Value in ACC
  emit_load(T1, (-1)*temp_start, FP, s); // load the value of e1 saved on stack into T1
  emit_fetch_int(ACC, ACC, s); // get the int value out of the Int object stored in ACC, and place the int value in ACC
  emit_fetch_int(T1, T1, s); // get the int value out of the Int object stored in T1, and place the int value in T1
  int true_label = table->label_id; table->label_id++;
  int return_label = table->label_id; table->label_id++;
  emit_blt(T1, ACC, true_label, s); // if (T1 = e1) < (ACC = e2), then branch to true label. else fall through
  emit_load_bool(ACC, falsebool, s); // load the false Bool object into ACC. 
  emit_branch(return_label, s); // jump to the return label. 
  emit_label_def(true_label, s); // if e1 < e2, the control flow will jump to here. 
  emit_load_bool(ACC, truebool, s); // load the true bool into ACC. 
  emit_label_def(return_label, s); // the false branch will jump here, skipping the loading of the bool. 
  s << "# End Code lt expression." << endl;
}

int lt_class::compute_max_locals() {
  int num1 = e1->compute_max_locals();
  int num2 = e2->compute_max_locals();
  return num1 + num2 + 1;
}

////////////////////////////////////////////////////////////////////////////////
//
// Eq code gen
// Equality test on primitives handled for us in trap-handler. 
//
////////////////////////////////////////////////////////////////////////////////
void eq_class::code(ostream &s, int temp_start, SymbolTable<Symbol, var_loc>* envr, CgenClassTableP table, CgenNodeP curr_class) {
  s << "# Begin Code eq expression at line number " << get_line_number() << endl;
  e1->code(s, temp_start, envr, table, curr_class); // evaluate e1. Result stored in ACC
  emit_store(ACC, (-1)*temp_start, FP, s); // store e1 on stack
  e2->code(s, temp_start + 1, envr, table, curr_class); // evaluate e2. Value in ACC
  emit_load(T1, (-1)*temp_start, FP, s); // load the value of e1 saved on stack into T1
  emit_move(T2, ACC, s); // now e2 is in T2. e1 in T1, e2 in T2
  int return_label = table->label_id; table->label_id++;
  emit_load_bool(ACC, truebool, s); // load the true Bool object into ACC
  emit_beq(T1, T2, return_label, s); // if the pointers in T1 and T2 are the same, then the objects are equal. We loaded the true Bool in ACC, so we simply return. 
  emit_load_bool(A1, falsebool, s); // if T1 and T2 are not equal, then we need to run the equality test. This method in the trap-handler expects the true Bool in ACC and false Bool in A1
  emit_jal(EQUALITY_TEST, s); // jump to the equality test. This will return the true Bool in ACC if T1 and T2 are equal according to semanctics of COOL, or the false Bool in ACC if they are not. 
  emit_label_def(return_label, s); // the return label if the objects have same pointer. 
  s << "# End Code eq expression." << endl;
}

int eq_class::compute_max_locals() {
  int num1 = e1->compute_max_locals();
  int num2 = e2->compute_max_locals();
  return num1 + num2 + 1;
}

////////////////////////////////////////////////////////////////////////////////
//
// Leq code gen. Just like lt, except with leq replacing lt. 
//
////////////////////////////////////////////////////////////////////////////////
void leq_class::code(ostream &s, int temp_start, SymbolTable<Symbol, var_loc>* envr, CgenClassTableP table, CgenNodeP curr_class) {
  s << "# Begin Code leq expression at line number " << get_line_number() <<  endl;
  e1->code(s, temp_start, envr, table, curr_class); // evaluate e1. value of e1 in ACC
  emit_store(ACC, (-1)*temp_start, FP, s); // store e1 on stack
  e2->code(s, temp_start + 1, envr, table, curr_class); // evaluate e2. Value in ACC
  emit_load(T1, (-1)*temp_start, FP, s); // load the value of e1 saved on stack into T1
  emit_fetch_int(ACC, ACC, s); // get the int value out of the Int object stored in ACC, and place the int value in ACC
  emit_fetch_int(T1, T1, s); // get the int value out of the Int object stored in T1, and place the int value in T1
  int true_label = table->label_id; table->label_id++;
  int return_label = table->label_id; table->label_id++;
  emit_bleq(T1, ACC, true_label, s); // if (T1 = e1) <= (ACC = e2), then branch to true label. else fall through
  emit_load_bool(ACC, falsebool, s); // load the false Bool object into ACC. 
  emit_branch(return_label, s); // jump to the return label. 
  emit_label_def(true_label, s); // if e1 < e2, the control flow will jump to here. 
  emit_load_bool(ACC, truebool, s); // load the true bool into ACC. 
  emit_label_def(return_label, s); // the false branch will jump here, skipping the loading of the bool. 
  s << "# End Code leq expression." << endl;
}

int leq_class::compute_max_locals() {
  int num1 = e1->compute_max_locals();
  int num2 = e2->compute_max_locals();
  return num1 + num2 + 1;
}

////////////////////////////////////////////////////////////////////////////////
//
// Comp code gen
// Return the Bool object opposite in value to to the one in e1. 
//
////////////////////////////////////////////////////////////////////////////////
void comp_class::code(ostream &s, int temp_start, SymbolTable<Symbol, var_loc>* envr, CgenClassTableP table, CgenNodeP curr_class) {
  s << "# Begin Code comp expression at line number " << get_line_number() << endl;
   e1->code(s, temp_start, envr, table, curr_class); // evaluate e1. value of e1 in ACC
   emit_fetch_int(T2, ACC, s); // get the int value out of the bool. 
   int bool_is_false = table->label_id; table->label_id++;
   int return_label = table->label_id; table->label_id++;
   emit_beqz(T2, bool_is_false, s); // jump to the bool_is_false label if the value in T2 is equal to 0. The value in T2 is the value of the e1 Bool. 0 indicates a false Bool. 
   emit_load_bool(ACC, truebool, s); // if we fall through the beqz, then the e1 Bool value is not 0, so it is a true Bool. so we load the false Bool into ACC, and jump to the return label. 
   emit_branch(return_label, s); // jump to the return label, with the true Bool loaded in ACC. 
   emit_label_def(bool_is_false, s); // jump to this label if e1 is a false bool. 
   emit_load_bool(ACC, truebool, s); // load the opposite of false, so the true Bool into ACC. 
   emit_label_def(return_label, s);  // return label. 
   s << "# End Code comp expression." << endl;
}

int comp_class::compute_max_locals() {
  return e1->compute_max_locals();
}

////////////////////////////////////////////////////////////////////////////////
//
// Int const code gen
//
////////////////////////////////////////////////////////////////////////////////
void int_const_class::code(ostream& s, int temp_start, SymbolTable<Symbol, var_loc>* envr, CgenClassTableP table, CgenNodeP curr_class) {
  s << "# Begin Code int const expression at line number " << get_line_number() << endl;
  //
  // Need to be sure we have an IntEntry *, not an arbitrary Symbol
  //
  emit_load_int(ACC,inttable.lookup_string(token->get_string()),s);
  s << "# End Code int const expression." << endl;
}

int int_const_class::compute_max_locals() {
  return 0;
}

////////////////////////////////////////////////////////////////////////////////
//
// String const code gen
//
////////////////////////////////////////////////////////////////////////////////
void string_const_class::code(ostream& s, int temp_start, SymbolTable<Symbol, var_loc>* envr, CgenClassTableP table, CgenNodeP curr_class) {
  s << "# Begin Code string const expression at line number " << get_line_number() << endl;
  emit_load_string(ACC,stringtable.lookup_string(token->get_string()),s);
  s << "# End Code string const expression." << endl;
}

int string_const_class::compute_max_locals() {
  return 0;
}

////////////////////////////////////////////////////////////////////////////////
//
// Bool const code gen
//
////////////////////////////////////////////////////////////////////////////////
void bool_const_class::code(ostream& s, int temp_start, SymbolTable<Symbol, var_loc>* envr, CgenClassTableP table, CgenNodeP curr_class) {
  s << "# Begin Code bool expression at line number " << get_line_number() << endl;
  emit_load_bool(ACC, BoolConst(val), s);
  s << "# End Code bool expression." << endl;
}

int bool_const_class::compute_max_locals() {
  return 0;
}

////////////////////////////////////////////////////////////////////////////////
//
// The typename of the new object is stored in the AST node new__class.
// Use that typname to generate the labels for the prototype and 
// init methods we want the code to access. 
//
// TODO, need to handle SELF_TYPE TODO
//
// We will then need to call the copy method, passing the address of this
// prototype object, and then call the init method, this time passing
// the return value of the copy method. After copy and init, we will 
// have a new object, and we return the address of this object in the 
// ACC. It will allready be there after calling 
//
// Question: Do we touch SELF register in this case? 
//
// Also, note that the type can be SELF_TYPE in which case, we will have to 
// lookup the dynamic tag of the current class, and then use that to index into
// the Class_objTab. This will have to be performed in memory at runtime. 
//
// NOTE: when indexing the class_ObjTab, need to remeber it stores two labels
// per class tag, the prototpy and the init label for each class, so will
// have to scale tag by 2. 
//
// { s << LA << dest_reg << " " << address << endl; }
// { s << JAL << address << endl; }
//
// class_objTab:
//  .word Object_protObj tag0
//  .word Object_init
//  .word IO_protObj tag1 
//  .word IO_init
//  .word Int_protObj tag2
//  .word Int_init
//  .word Bool_protObj ....
//
// Each prototype object is at an offset of 8 bytes from the last, or tag * 8
//
////////////////////////////////////////////////////////////////////////////////
void new__class::code(ostream &s, int temp_start, SymbolTable<Symbol, var_loc>* envr, CgenClassTableP table, CgenNodeP curr_class) {
  s << "# Begin Code new with type at line number " << get_line_number() << endl;
  if (strcmp(type_name->get_string(), SELF_TYPE->get_string()) == 0) {
    
    //move the address of the prototype object of the current class into ACC
    emit_load(T1, TAG_OFFSET, SELF, s); // move the tag of class of the curent object into T1. This will be our index into the class_ObjTab
    emit_load_imm(T2, 8, s); // load 8 into T2
    emit_mul(T1, T1, T2, s); // multiply T1 and T2 and store in T1. Now T1 contains the offset in bytes from the start of the class_ObjTab to the prototype object
    emit_load_address(T2, CLASSOBJTAB, s); // move the address of the object table into T2
    emit_addu(T2, T1, T2, s); // add the offset stored in T1 to the address stored in T2. T2 now contains address of protoype object
    emit_load(ACC, 0, T2, s); // ACC now contains the address of the object we want to copy. 
    emit_jal(OBJECT_DOT_COPY, s); // copy the object in ACC. result is passed back in ACC
    emit_load(T2, 1, T2, s); // add 4 to the address stored in T2. T2 now contains the address of the init method for the obejct in ACC
    emit_jalr(T2, s); // call the init method. ACC already contains the object to init. 


  } else {
    s << LA << ACC << " " << type_name->get_string() << PROTOBJ_SUFFIX << endl; //load the address of the protoype object into ACC
    emit_jal(OBJECT_DOT_COPY, s); //call object.copy
    s << JAL << type_name->get_string() << CLASSINIT_SUFFIX << endl; //call the init method. 
  }
  s << "# End Code new with type " << type_name->get_string() << endl;
}

int new__class::compute_max_locals() {
  return 0;
}

////////////////////////////////////////////////////////////////////////////////
//
// Isvoid code gen
//
////////////////////////////////////////////////////////////////////////////////
void isvoid_class::code(ostream &s, int temp_start, SymbolTable<Symbol, var_loc>* envr, CgenClassTableP table, CgenNodeP curr_class) {
  s << "# Begin Code isvoid expression at line number " << get_line_number() << endl;
  e1->code(s, temp_start, envr, table, curr_class);
  int void_label = table->label_id; table->label_id++;
  int return_label = table->label_id; table->label_id++;
  emit_beqz(ACC, void_label, s); // jump to the void label if the value of e1 is void. 
  emit_load_bool(ACC, falsebool, s); // fall through the jump, so we load in the false Bool. 
  emit_branch(return_label, s); // jump to the return label. 
  emit_label_def(void_label, s); // if the expression in e1 is void, then we jump to here. 
  emit_load_bool(ACC, truebool, s); // load the true Bool into ACC so it can be returned. 
  emit_label_def(return_label, s); // the return label 
  s << "# Begin Code isvoid expression." << endl;
}

int isvoid_class::compute_max_locals() {
  return e1->compute_max_locals();
}

////////////////////////////////////////////////////////////////////////////////
//
// No expression code gen puts zero in ACC
//
////////////////////////////////////////////////////////////////////////////////
void no_expr_class::code(ostream &s, int temp_start, SymbolTable<Symbol, var_loc>* envr, CgenClassTableP table, CgenNodeP curr_class) {
  s << "# Begin Code no_epression expression at line number " << get_line_number() << endl;
  emit_move(ACC, ZERO, s); 
  s << "# End Code no_epression expression." << endl;
  return;
}

int no_expr_class::compute_max_locals() {
  return 0;
}

////////////////////////////////////////////////////////////////////////////////
//
// First, check for self. If the name of the variable is self, just move
// the SELF register into the ACC. 
//
// Else, lookup the obects var_loc from the enviornment. 
// Then determe what the offset is relative to. 
//
// CLASS_CONTEXT = relative to self object
// FEATURE_CONTEXT = relative to FP
// LOCAL_CONTEXT = relative to SP
//
// Then load the address stored on the stack into ACC
//
// s << LW << dest_reg << " " << offset * WORD_SIZE << "(" << source_reg << ")"  << endl;
// { s << MOVE << dest_reg << " " << source_reg << endl; }
//
////////////////////////////////////////////////////////////////////////////////
void object_class::code(ostream &s, int temp_start, SymbolTable<Symbol, var_loc>* envr, CgenClassTableP table, CgenNodeP curr_class) {
  s << "# Begin Code objectID expression at line number " << get_line_number() << endl;
  if (strcmp(name->get_string(), self->get_string()) == 0) {
    emit_move(ACC, SELF, s);
    return;
  }

  var_loc* loc = envr->lookup(name);
  if (loc == NULL) {
    cout << "Could not find identifier " << name->get_string() << ". This should never happen." << endl;
  }
  int offset = loc->offset;
  if (strcmp(loc->context, CLASS_CONTEXT) == 0) {
    s << "# Loading attribute object into ACC" << endl;
    emit_load(ACC, offset, SELF, s);
  } else if (strcmp(loc->context, FEATURE_CONTEXT) == 0) {
    s << "# Loading paramter object into ACC" << endl;
    emit_load(ACC, offset, FP, s);
  } else if (strcmp(loc->context, LOCAL_CONTEXT) == 0) {
    s << "# Loading local object into ACC" << endl;
    emit_load(ACC, (-1)*offset, FP, s);
  }
  s << "# End Code objectID expression." << endl;
}

int object_class::compute_max_locals() {
  return 0;
}

void CgenClassTable::dump_class_enviornment() {
  for(List<CgenNode> *l = nds; l; l = l->tl()) {
    CgenNodeP curr_class = l->hd();
    cout << "Enviornment for " << curr_class->name->get_string() << endl;
    curr_class->envr->dump();
  }
}
