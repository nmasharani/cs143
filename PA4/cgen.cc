
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
  for (List<CgenNode> * nl = nds; nl != NULL; nl = nl->tl()) {
    str << WORD << "-1" << endl;
    CgenNode * nd = nl->hd();
    Symbol class_name = nd->get_name();

    // get tags from name_to_tag
    
    emit_protobj_ref(class_name, str);
    str << ":" << endl;
    // Class tag
    int * tag_ptr = name_to_tag->probe(class_name);
    int tag;

    if (tag_ptr != NULL) {
      tag = *tag_ptr;
    } else {
      tag = tagtracker;
      name_to_tag->addid(class_name, new int(tag));
      tag_to_name->addid(tag, class_name);
      tagtracker++;
    }


    // Attributes

    Features attributes = class_attributes->lookup(class_name);

    // Object size

    // 1 for tag, 1 for size, 1 for dispatch pointer, 1 for each attr
    int size = 1 + 1 + 1 + attributes->len();

    // emit class tag
    str << WORD << tag << endl;

    // emit size
    str << WORD << size << endl;

    // emit dispatch table
     str << WORD;
    emit_disptable_ref(class_name, str);
    str << endl;

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
  for (int i = 0; i < tagtracker; i++) {
    Symbol class_name = tag_to_name->lookup(i);
    Features methods = class_methods->lookup(class_name);
    emit_disptable_ref(class_name, str); str << LABEL;
    for (int j = methods->first(); methods->more(j); j = methods->next(j)) {
      Feature method = methods->nth(j);
      str << WORD; emit_method_ref(method->current_class, method->get_name(), str); str << endl;
    }
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
   stringclasstag = 4;
   intclasstag =    2;
   boolclasstag =   3;

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

   name_to_tag->addid(Object, new int(0));
   tag_to_name->addid(0, Object);

   name_to_tag->addid(IO, new int(1));
   tag_to_name->addid(1, IO);

   name_to_tag->addid(Int, new int(intclasstag));
   tag_to_name->addid(intclasstag, Int);

   name_to_tag->addid(Bool, new int(boolclasstag));
   tag_to_name->addid(boolclasstag, Bool);

   name_to_tag->addid(Str, new int(stringclasstag));
   tag_to_name->addid(stringclasstag, Str);

   name_to_tag->addid(Main, new int(5));
   tag_to_name->addid(5, Main);

   tagtracker = 6;

   /* TRACKING CLASS METHODS AND ATTRIBUTES */
   class_attributes = new SymbolTable<Symbol, Features_class>();
   class_methods = new SymbolTable<Symbol, Features_class>();
   build_classes_attributes();
   build_classes_methods();

   if (cgen_debug) dump_classes_methods(cout);
   if (cgen_debug) dump_classes_attributes(cout);

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
  for(List<CgenNode> *l = nds; l; l = l->tl()) {
    CgenNodeP curr_class = l->hd();
    curr_class->envr = new SymbolTable<Symbol, var_loc>();
    curr_class->envr->enterscope();
    Symbol class_name = curr_class->name;
    Features attrs = class_attributes->lookup(class_name);
    if (cgen_debug) cout << "Enviornment for " << curr_class->name->get_string() << endl;
    for (int i = attrs->first(); attrs->more(i); i = attrs->next(i)) {
      Feature curr_attr = attrs->nth(i);
      var_loc* loc = new var_loc;
      loc->context = CLASS_CONTEXT;
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
      num_locals_needed +=  curr_feat->get_expr()->compute_max_locals();
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
  cout << "Emmitting code to generate initializer method for " << curr_class->name->get_string() << endl;
  curr_class->envr->enterscope();
  emit_init_ref(curr_class->name, str); str << LABEL;
  /* first we set up the stack */
  
  int num_locals_needed = compute_max_locals_for_class_init(curr_class);
  num_locals_needed += NUM_REGISTERS_SAVED_BY_CALLER; // add 3 for the registers we will push
  int bytes_to_move_SP = num_locals_needed * WORD_SIZE;

  emit_store(FP, SAVE_FP_OFFSET, SP, str); // save callers FP register
  emit_store(SELF, SAVE_SELF_OFFSET, SP, str); // save the callers SELF register
  emit_store(RA, SAVE_RA_OFFSET, SP, str); // save the caller's RA register
  emit_addiu(FP, SP, 0, str); // move FP down to SP
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
      curr_feat->get_expr()->code(str, (num_locals_needed - NUM_REGISTERS_SAVED_BY_CALLER), curr_class->envr, this); //now ACC has value of intializer expression
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
  cout << "Emitting code for method " << curr_feat->get_name()->get_string() << endl;
  curr_class->envr->enterscope();
  emit_method_ref(curr_class->name, curr_feat->get_name(), str); str << LABEL;

  int num_locals_needed = curr_feat->get_expr()->compute_max_locals();
  num_locals_needed += NUM_REGISTERS_SAVED_BY_CALLER; // add 3 for the registers we will push
  int bytes_to_move_SP = num_locals_needed * WORD_SIZE;

  emit_store(FP, SAVE_FP_OFFSET, SP, str); // save callers FP register
  emit_store(SELF, SAVE_SELF_OFFSET, SP, str); // save the callers SELF register
  emit_store(RA, SAVE_RA_OFFSET, SP, str); // save the caller's RA register
  emit_addiu(FP, SP, 0, str); // move FP down to SP
  emit_addiu(SP, SP, (bytes_to_move_SP * (-1)), str); // move the stack pointer down
  emit_move(SELF, ACC, str); // Move to new context, the object calling this method is the new self. 

  Formals formals = curr_feat->get_formals();
  for (int i = formals->first(); formals->more(i); i = formals->next(i)) {
    Formal curr_formal = formals->nth(i);
    int offset = i; 
    var_loc* loc = new var_loc;
    loc->context = FEATURE_CONTEXT;
    loc->offset = offset; // This offset will be relative to the FP in the callee's frame. Simply add offset to FP to get the adress of these params. 
    curr_class->envr->addid(curr_formal->get_name(), loc);
  }
  curr_feat->get_expr()->code(str, (num_locals_needed - NUM_REGISTERS_SAVED_BY_CALLER), curr_class->envr, this); // now the return Object of this expression is in ACC

  emit_addiu(SP, SP, bytes_to_move_SP, str); // move the stack pointer back up to its old spot before init method called/
  emit_load(FP, SAVE_FP_OFFSET, SP, str); // move saved FP back into FP.
  emit_load(SELF, SAVE_SELF_OFFSET, SP, str); // move saved SELF back into SELF. 
  emit_load(RA, SAVE_RA_OFFSET, SP, str); // move saved RA back into RA.

  emit_return(str);
  curr_class->envr->exitscope();
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
////////////////////////////////////////////////////////////////////////////////

void assign_class::code(ostream &s, int temp_start, SymbolTable<Symbol, var_loc>* envr, CgenClassTableP table) {
  cout << "Code assign expression." << endl;
}

int assign_class::compute_max_locals() {
  return expr->compute_max_locals();
}

void static_dispatch_class::code(ostream &s, int temp_start, SymbolTable<Symbol, var_loc>* envr, CgenClassTableP table) {
  cout << "Code static dispatch expression." << endl;
}

int static_dispatch_class::compute_max_locals() {
  int sum = 0;
  sum += expr->compute_max_locals();
  for (int i = actual->first(); actual->more(i); i++) {
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
// TODO, Need to handle the dispatch on void TODO
//
////////////////////////////////////////////////////////////////////////////////
void dispatch_class::code(ostream &s, int temp_start, SymbolTable<Symbol, var_loc>* envr, CgenClassTableP table) {
  cout << "Code disptach expression." << endl;
  for (int i = actual->first(); actual->more(i); i = actual->next(i)) {
    Expression curr_param = actual->nth(i);
    curr_param->code(s, temp_start, envr, table); // Now the return value for this argument is in ACC. 
    int curr_offset = i;
    emit_store(ACC, curr_offset, SP, s); // pass method arguments to callee via the stack. 
  }
  expr->code(s, temp_start, envr, table); // we know the value of e0 is now in ACC. This is the object invoking the dispatch. 
  emit_load(T1, DISPTABLE_OFFSET, ACC, s); // now, we load the address of the dispatch table for this class into a temporary T1. 
  int offset_in_disp_tab = table->compute_offset_in_disp_table(name, expr->get_type());
  cout << " loaded dispatch for class " << expr->get_type()->get_string() << "at offset " << offset_in_disp_tab << endl;
  emit_addiu(T2, T1, offset_in_disp_tab * WORD_SIZE, s); //This loads the address of the function we want to dispatch to in the register T2. 
  emit_jalr(T2, s);
}

int dispatch_class::compute_max_locals() {
  int sum = 0;
  sum += expr->compute_max_locals();
  for (int i = actual->first(); actual->more(i); i++) {
    Expression curr_expr = actual->nth(i);
    sum += curr_expr->compute_max_locals() + 1;
  }
  return sum;
}

void cond_class::code(ostream &s, int temp_start, SymbolTable<Symbol, var_loc>* envr, CgenClassTableP table) {
  cout << "Code cond expression." << endl;
}

int cond_class::compute_max_locals() {
  int num1 = pred->compute_max_locals();
  int num2 = then_exp->compute_max_locals();
  int num3 = else_exp->compute_max_locals();
  return num1 + num2 + num3 + 2;
}

void loop_class::code(ostream &s, int temp_start, SymbolTable<Symbol, var_loc>* envr, CgenClassTableP table) {
  cout << "Code loop expression." << endl;
}

int loop_class::compute_max_locals() {
  int num1 = pred->compute_max_locals();
  int num2 = body->compute_max_locals();
  return num1 + num2 + 1;
}

void typcase_class::code(ostream &s, int temp_start, SymbolTable<Symbol, var_loc>* envr, CgenClassTableP table) {
  cout << "Code typecase expression." << endl;
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

void block_class::code(ostream &s, int temp_start, SymbolTable<Symbol, var_loc>* envr, CgenClassTableP table) {
  cout << "Code block epression." << endl;
  for (int i = body->first(); body->more(i); i = body->next(i)) {
    Expression curr_exp = body->nth(i);
    curr_exp->code(s, temp_start, envr, table);
  }
}

int block_class::compute_max_locals() {
  int sum = 0;
  for (int i = body->first(); body->more(i); i++) {
    Expression curr_expr = body->nth(i);
    sum += curr_expr->compute_max_locals();
  }
  return sum;
}

void let_class::code(ostream &s, int temp_start, SymbolTable<Symbol, var_loc>* envr, CgenClassTableP table) {
  cout << "Code let expression." << endl;
}

int let_class::compute_max_locals() {
  int num1 = init->compute_max_locals();
  int num2 = body->compute_max_locals();
  return num1 + num2 + 1;
}

void plus_class::code(ostream &s, int temp_start, SymbolTable<Symbol, var_loc>* envr, CgenClassTableP table) {
  cout << "Code plus expression." << endl;
}

int plus_class::compute_max_locals() {
  int num1 = e1->compute_max_locals();
  int num2 = e2->compute_max_locals();
  return num1 + num2 + 1;
}

void sub_class::code(ostream &s, int temp_start, SymbolTable<Symbol, var_loc>* envr, CgenClassTableP table) {
  cout << "Code sub expression." << endl;
}

int sub_class::compute_max_locals() {
  int num1 = e1->compute_max_locals();
  int num2 = e2->compute_max_locals();
  return num1 + num2 + 1;
}

void mul_class::code(ostream &s, int temp_start, SymbolTable<Symbol, var_loc>* envr, CgenClassTableP table) {
  cout << "Code mul expression." << endl;
}

int mul_class::compute_max_locals() {
  int num1 = e1->compute_max_locals();
  int num2 = e2->compute_max_locals();
  return num1 + num2 + 1;
}

void divide_class::code(ostream &s, int temp_start, SymbolTable<Symbol, var_loc>* envr, CgenClassTableP table) {
  cout << "Code divide expression." << endl;
}

int divide_class::compute_max_locals() {
  int num1 = e1->compute_max_locals();
  int num2 = e2->compute_max_locals();
  return num1 + num2 + 1;
}

void neg_class::code(ostream &s, int temp_start, SymbolTable<Symbol, var_loc>* envr, CgenClassTableP table) {
  cout << "Code neg expression." << endl;
}

int neg_class::compute_max_locals() {
  return e1->compute_max_locals();
}

void lt_class::code(ostream &s, int temp_start, SymbolTable<Symbol, var_loc>* envr, CgenClassTableP table) {
  cout << "Code lt expression." << endl;
}

int lt_class::compute_max_locals() {
  int num1 = e1->compute_max_locals();
  int num2 = e2->compute_max_locals();
  return num1 + num2 + 1;
}

void eq_class::code(ostream &s, int temp_start, SymbolTable<Symbol, var_loc>* envr, CgenClassTableP table) {
  cout << "Code eq expression." << endl;
}

int eq_class::compute_max_locals() {
  int num1 = e1->compute_max_locals();
  int num2 = e2->compute_max_locals();
  return num1 + num2 + 1;
}

void leq_class::code(ostream &s, int temp_start, SymbolTable<Symbol, var_loc>* envr, CgenClassTableP table) {
  cout << "Code leq expression." << endl;
}

int leq_class::compute_max_locals() {
  int num1 = e1->compute_max_locals();
  int num2 = e2->compute_max_locals();
  return num1 + num2 + 1;
}

void comp_class::code(ostream &s, int temp_start, SymbolTable<Symbol, var_loc>* envr, CgenClassTableP table) {
  cout << "Code comp expression." << endl;
}

int comp_class::compute_max_locals() {
  return e1->compute_max_locals();
}

void int_const_class::code(ostream& s, int temp_start, SymbolTable<Symbol, var_loc>* envr, CgenClassTableP table) {
  cout << "Code int const expression." << endl;
  //
  // Need to be sure we have an IntEntry *, not an arbitrary Symbol
  //
  emit_load_int(ACC,inttable.lookup_string(token->get_string()),s);
}

int int_const_class::compute_max_locals() {
  return 0;
}

void string_const_class::code(ostream& s, int temp_start, SymbolTable<Symbol, var_loc>* envr, CgenClassTableP table) {
  cout << "Code string const expression." << endl;
  emit_load_string(ACC,stringtable.lookup_string(token->get_string()),s);
}

int string_const_class::compute_max_locals() {
  return 0;
}

void bool_const_class::code(ostream& s, int temp_start, SymbolTable<Symbol, var_loc>* envr, CgenClassTableP table) {
  cout << "Code bool expression." << endl;
  emit_load_bool(ACC, BoolConst(val), s);
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
////////////////////////////////////////////////////////////////////////////////
void new__class::code(ostream &s, int temp_start, SymbolTable<Symbol, var_loc>* envr, CgenClassTableP table) {
  cout << "Code new with type " << type_name->get_string() << endl;
  if (strcmp(type_name->get_string(), SELF_TYPE->get_string()) == 0) {
    //handle self type here. 
  } else {
    //load the address of the protoype object into ACC
    //call object.copy
    //call the init method. 
    s << LA << ACC << " " << type_name->get_string() << PROTOBJ_SUFFIX << endl;
    emit_jal(OBJECT_DOT_COPY, s);
    s << JAL << type_name->get_string() << CLASSINIT_SUFFIX << endl;
  }
}

int new__class::compute_max_locals() {
  return 0;
}

void isvoid_class::code(ostream &s, int temp_start, SymbolTable<Symbol, var_loc>* envr, CgenClassTableP table) {
  cout << "Code isvoid expression." << endl;
}

int isvoid_class::compute_max_locals() {
  return e1->compute_max_locals();
}

void no_expr_class::code(ostream &s, int temp_start, SymbolTable<Symbol, var_loc>* envr, CgenClassTableP table) {
  cout << "Code no_epression expression." << endl;
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
void object_class::code(ostream &s, int temp_start, SymbolTable<Symbol, var_loc>* envr, CgenClassTableP table) {
  cout << "Code objectID expression." << endl;
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
    cout << "Coding attribute object" << endl;
    emit_load(ACC, offset, SELF, s);
  } else if (strcmp(loc->context, FEATURE_CONTEXT) == 0) {
    cout << "Coding paramter object" << endl;
    emit_load(ACC, offset, FP, s);
  } else if (strcmp(loc->context, LOCAL_CONTEXT) == 0) {
    cout << "Coding local object" << endl;
    emit_load(ACC, offset, SP, s);
  }
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
