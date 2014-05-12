#ifndef COOL_TREE_H
#define COOL_TREE_H
//////////////////////////////////////////////////////////
//
// file: cool-tree.h
//
// This file defines classes for each phylum and constructor
//
//////////////////////////////////////////////////////////


#include "tree.h"
#include "cool-tree.handcode.h"
#include "symtab.h"
#include <cctype>


// define the class for phylum
// define simple phylum - Program

//////////////////////////////////////////////////////////
//
// Program_class 
//
//////////////////////////////////////////////////////////

typedef class Program_class *Program;

class Program_class : public tree_node {
public:
   tree_node *copy()		 { return copy_Program(); }
   virtual Program copy_Program() = 0;

   /* ********** LP added functions ********** */
   virtual Classes get_classes() = 0;
   /* ******** End LP added functions ******** */

#ifdef Program_EXTRAS
   Program_EXTRAS
#endif
};


// define simple phylum - Class_

//////////////////////////////////////////////////////////
//
// Class__class 
//
//////////////////////////////////////////////////////////

typedef class Class__class *Class_;

class Class__class : public tree_node {
protected:
   SymbolTable<Symbol, Entry>* variables_in_scope; //tracks the variables in scope. The O in the. 
   SymbolTable<Symbol, Entry>* inheritance_graph;
   Class_ root_class; //tracks the class for which this node descends from. The C in the type-check rules. 
public:
   tree_node *copy()		     { return copy_Class_(); }
   virtual Class_ copy_Class_() = 0;

   void set_root_class(Class_ _root_class) { root_class = _root_class; }
   Class_ get_root_class() { return root_class; }
   void set_variables_in_scope(SymbolTable<Symbol, Entry>* _variables_in_scope) {
      variables_in_scope = _variables_in_scope; 
   }
   SymbolTable<Symbol, Entry>* get_variables_in_scope() { return variables_in_scope; }
   void set_inheritance_graph(SymbolTable<Symbol, Entry>* graph) { inheritance_graph = graph; }
   SymbolTable<Symbol, Entry>* get_inheritance_graph() { return inheritance_graph; }
   

   /* ********** LP added functions ********** */
   virtual Symbol get_name() = 0;
   virtual Symbol get_parent() = 0;
   virtual Features get_features() = 0;
   virtual Symbol get_filename_1() = 0;
   virtual Symbol typecheck() = 0;
   /* ******** End LP added functions ******** */
   

#ifdef Class__EXTRAS
   Class__EXTRAS
#endif
};


// define simple phylum - Feature

//////////////////////////////////////////////////////////
//
// Feature_class 
//
//////////////////////////////////////////////////////////

typedef class Feature_class *Feature;

class Feature_class : public tree_node {
protected:
   SymbolTable<Symbol, Entry>* variables_in_scope; //tracks the variables in scope. The O in the. 
   SymbolTable<Symbol, Entry>* inheritance_graph;
   Class_ root_class; //tracks the class for which this node descends from. The C in the type-check rules. 
public:
   tree_node *copy()		 { return copy_Feature(); }
   virtual Feature copy_Feature() = 0;

   void set_root_class(Class_ _root_class) { root_class = _root_class; }
   Class_ get_root_class() { return root_class; }
   void set_variables_in_scope(SymbolTable<Symbol, Entry>* _variables_in_scope) {
      variables_in_scope = _variables_in_scope; 
   }
   SymbolTable<Symbol, Entry>* get_variables_in_scope() { return variables_in_scope; }
   void set_inheritance_graph(SymbolTable<Symbol, Entry>* graph) { inheritance_graph = graph; }
   SymbolTable<Symbol, Entry>* get_inheritance_graph() { return inheritance_graph; }
   /* ********** LP added functions ********** */
   virtual Symbol get_name() = 0;
   virtual Symbol get_type() = 0;
   virtual Formals get_formals() = 0;
   virtual Expression get_expression() = 0;
   virtual char* get_type_name() = 0;
   virtual Symbol typecheck() = 0;
   /* ******** End LP added functions ******** */

#ifdef Feature_EXTRAS
   Feature_EXTRAS
#endif
};


// define simple phylum - Formal

//////////////////////////////////////////////////////////
//
// Formal_class 
//
//////////////////////////////////////////////////////////

typedef class Formal_class *Formal;

class Formal_class : public tree_node {
protected:
   SymbolTable<Symbol, Entry>* variables_in_scope; //tracks the variables in scope. The O in the. 
   Class_ root_class; //tracks the class for which this node descends from. The C in the type-check rules. 
public:
   tree_node *copy()		 { return copy_Formal(); }
   virtual Formal copy_Formal() = 0;

   void set_root_class(Class_ _root_class) { root_class = _root_class; }
   Class_ get_root_class() { return root_class; }
   void set_variables_in_scope(SymbolTable<Symbol, Entry>* _variables_in_scope) {
      variables_in_scope = _variables_in_scope; 
   }
   SymbolTable<Symbol, Entry>* get_variables_in_scope() { return variables_in_scope; }

   /* ********** LP added functions ********** */
   virtual Symbol get_name() = 0;
   virtual Symbol get_type() = 0;
   virtual Symbol typecheck() = 0;
   /* ******** End LP added functions ******** */

#ifdef Formal_EXTRAS
   Formal_EXTRAS
#endif
};


// define simple phylum - Expression

//////////////////////////////////////////////////////////
//
// Expression_class 
//
//////////////////////////////////////////////////////////

typedef class Expression_class *Expression;

class Expression_class : public tree_node {
protected:
   SymbolTable<Symbol, Entry>* variables_in_scope; //tracks the variables in scope. The O in the. 
   SymbolTable<Symbol, Entry>* inheritance_graph;
   Class_ root_class; //tracks the class for which this node descends from. The C in the type-check rules. 
public:
   tree_node *copy()		 { return copy_Expression(); }
   virtual Expression copy_Expression() = 0;

   void set_root_class(Class_ _root_class) { root_class = _root_class; }
   Class_ get_root_class() { return root_class; }
   void set_variables_in_scope(SymbolTable<Symbol, Entry>* _variables_in_scope) {variables_in_scope = _variables_in_scope; }
   SymbolTable<Symbol, Entry>* get_variables_in_scope() { return variables_in_scope; }
   void set_inheritance_graph(SymbolTable<Symbol, Entry>* graph) { inheritance_graph = graph; }
   SymbolTable<Symbol, Entry>* get_inheritance_graph() { return inheritance_graph; }

   /* ********** LP added functions ********** */
   virtual Symbol get_name() = 0; // assign, static dispatch, normal dispatch, let, int_const, str_const, object
   virtual Expression get_expression_1() = 0; // assign, static dispatch, normal 
   //dispatch, conditions, loop, case, let, plus, sub, mult, div, neg, lt, eq, leq, comp, isvoid, 
   virtual Expression get_expression_2() = 0; // conditions, loop, let, plus, sub, mult, div, lt, eq, leq, 
   virtual Expression get_expression_3() = 0; // conditions, 
   virtual Symbol get_var_type() = 0; // static dispatch, let, new, 
   virtual Expressions get_expressions() = 0; // static dispatch, normal dispatch, block, 
   virtual Cases get_cases() = 0; // case, 
   virtual Boolean get_bool_val() = 0; // Bool, 
   virtual char* get_type_name() = 0; // assign, static dispatch, 
   /* ******** End LP added functions ******** */

   virtual Symbol typecheck() = 0;

   // Is t1 a parent of t2?
   bool isparent(Symbol t1, Symbol t2) {
      if (!inheritance_graph->lookup(t2)) {/* TODO(nm): error */}

      while (t2) {
         if (strcmp(t1->get_string(), t2->get_string()) == 0) return true;
         t2 = inheritance_graph->lookup(t2);
      }
      return false;
   }

   Symbol get_common_parent(Symbol t1, Symbol t2) {
      if (!inheritance_graph->lookup(t1)) {/* TODO(nm): error */}
      if (!inheritance_graph->lookup(t2)) {/* TODO(nm): error */}

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


#ifdef Expression_EXTRAS
   Expression_EXTRAS
#endif
};


// define simple phylum - Case

//////////////////////////////////////////////////////////
//
// Case_class 
//
//////////////////////////////////////////////////////////

typedef class Case_class *Case;

class Case_class : public tree_node {
protected:
   SymbolTable<Symbol, Entry>* variables_in_scope; //tracks the variables in scope. The O in the. 
   SymbolTable<Symbol, Entry>* inheritance_graph;
   Class_ root_class; //tracks the class for which this node descends from. The C in the type-check rules. 
public:
   tree_node *copy()		 { return copy_Case(); }
   virtual Case copy_Case() = 0;

   void set_root_class(Class_ _root_class) { root_class = _root_class; }
   Class_ get_root_class() { return root_class; }
   void set_variables_in_scope(SymbolTable<Symbol, Entry>* _variables_in_scope) {variables_in_scope = _variables_in_scope; }
   SymbolTable<Symbol, Entry>* get_variables_in_scope() { return variables_in_scope; }
   void set_inheritance_graph(SymbolTable<Symbol, Entry>* graph) { inheritance_graph = graph; }
   SymbolTable<Symbol, Entry>* get_inheritance_graph() { return inheritance_graph; }
   
   /* ********** LP added functions ********** */
   virtual Symbol get_name() = 0;
   virtual Symbol get_type_decl() = 0;
   virtual Expression get_expr() = 0;
   virtual Symbol typecheck() = 0;   
   /* ******** End LP added functions ******** */

#ifdef Case_EXTRAS
   Case_EXTRAS
#endif
};


// define the class for phylum - LIST
// define list phlyum - Classes
typedef list_node<Class_> Classes_class;
typedef Classes_class *Classes;


// define list phlyum - Features
typedef list_node<Feature> Features_class;
typedef Features_class *Features;


// define list phlyum - Formals
typedef list_node<Formal> Formals_class;
typedef Formals_class *Formals;


// define list phlyum - Expressions
typedef list_node<Expression> Expressions_class;
typedef Expressions_class *Expressions;


// define list phlyum - Cases
typedef list_node<Case> Cases_class;
typedef Cases_class *Cases;


// define the class for constructors
// define constructor - program

//////////////////////////////////////////////////////////
//
// program_class 
//
//////////////////////////////////////////////////////////

class program_class : public Program_class {
protected:
   Classes classes;
public:
   program_class(Classes a1) {
      classes = a1;
   }
   Program copy_Program();
   void dump(ostream& stream, int n);

   /* ********** LP added functions ********** */
   Classes get_classes() { return classes; }
   void check_naming_and_scope();
   void evaluate_expressions(SymbolTable<Symbol, Entry>& scopes, Expression expr);
   /* ******** End LP added functions ******** */

#ifdef Program_SHARED_EXTRAS
   Program_SHARED_EXTRAS
#endif
#ifdef program_EXTRAS
   program_EXTRAS
#endif
};


// define constructor - class_

//////////////////////////////////////////////////////////
//
// class__class 
//
//////////////////////////////////////////////////////////

class class__class : public Class__class {
protected:
   Symbol name;
   Symbol parent;
   Features features;
   Symbol filename;
public:
   class__class(Symbol a1, Symbol a2, Features a3, Symbol a4) {
      name = a1;
      parent = a2;
      features = a3;
      filename = a4;
   }
   Class_ copy_Class_();
   void dump(ostream& stream, int n);

   /* ********** LP added functions ********** */
   Symbol   get_name()     { return name; }
   Symbol   get_parent()   { return parent; }
   Features get_features() { return features; }
   Symbol   get_filename_1() { return filename; }
   /* ******** End LP added functions ******** */


#ifdef Class__SHARED_EXTRAS
   Class__SHARED_EXTRAS
#endif
#ifdef class__EXTRAS
   class__EXTRAS
#endif
};

// define constructor - method

//////////////////////////////////////////////////////////
//
// method_class 
//
//////////////////////////////////////////////////////////

class method_class : public Feature_class {
protected:
   Symbol name;
   Formals formals;
   Symbol return_type;
   Expression expr;
public:
   method_class(Symbol a1, Formals a2, Symbol a3, Expression a4) {
      name = a1;
      formals = a2;
      return_type = a3;
      expr = a4;
   }
   Feature copy_Feature();
   void dump(ostream& stream, int n);

   /* ********** LP added functions ********** */
   Symbol get_name()             { return name; }
   Symbol get_type()             { return return_type; }
   Formals get_formals()         { return formals; }
   Expression get_expression()   { return expr; }
   char* get_type_name()         { return "method"; }
   Symbol typecheck() {

   }
   /* ******** End LP added functions ******** */

#ifdef Feature_SHARED_EXTRAS
   Feature_SHARED_EXTRAS
#endif
#ifdef method_EXTRAS
   method_EXTRAS
#endif
};


// define constructor - attr

//////////////////////////////////////////////////////////
//
// attr_class 
//
//////////////////////////////////////////////////////////

class attr_class : public Feature_class {
protected:
   Symbol name;
   Symbol type_decl;
   Expression init;
public:
   attr_class(Symbol a1, Symbol a2, Expression a3) {
      name = a1;
      type_decl = a2;
      init = a3; //init is the expression that initializes the attribute name of type type_decl
   }
   Feature copy_Feature(); //override to return a copy of this tree node for attributes
   void dump(ostream& stream, int n);

  /* ********** LP added functions ********** */
   Symbol get_name()             { return name; }
   Symbol get_type()             { return type_decl; }
   Formals get_formals()         { return NULL; }
   Expression get_expression()   { return init; }
   char* get_type_name()         { return "attribute"; }
   Symbol typecheck() {

   }
   /* ******** End LP added functions ******** */

#ifdef Feature_SHARED_EXTRAS
   Feature_SHARED_EXTRAS
#endif
#ifdef attr_EXTRAS
   attr_EXTRAS
#endif
};

// define constructor - formal

//////////////////////////////////////////////////////////
//
// formal_class 
//
//////////////////////////////////////////////////////////

class formal_class : public Formal_class {
protected:
   Symbol name;
   Symbol type_decl;
public:
   formal_class(Symbol a1, Symbol a2) {
      name = a1;
      type_decl = a2;
   }
   Formal copy_Formal();
   void dump(ostream& stream, int n);

   /* ********** LP added functions ********** */
   Symbol get_name()  { return name; }
   Symbol get_type()  { return type_decl; }
   Symbol typecheck() {

   }
   /* ******** End LP added functions ******** */

#ifdef Formal_SHARED_EXTRAS
   Formal_SHARED_EXTRAS
#endif
#ifdef formal_EXTRAS
   formal_EXTRAS
#endif
};


// define constructor - branch

//////////////////////////////////////////////////////////
//
// branch_class 
//
//////////////////////////////////////////////////////////

class branch_class : public Case_class {
protected:
   Symbol name;
   Symbol type_decl;
   Expression expr;
public:
   branch_class(Symbol a1, Symbol a2, Expression a3) {
      name = a1;
      type_decl = a2;
      expr = a3;
   }
   Case copy_Case();
   void dump(ostream& stream, int n);

   /* ********** LP added functions ********** */
   Symbol get_name()       { return name; }
   Symbol get_type_decl()  { return type_decl; }
   Expression get_expr()   { return expr; }
   Symbol typecheck() {

   }
   /* ******** End LP added functions ******** */

#ifdef Case_SHARED_EXTRAS
   Case_SHARED_EXTRAS
#endif
#ifdef branch_EXTRAS
   branch_EXTRAS
#endif
};


// define constructor - assign

//////////////////////////////////////////////////////////
//
// assign_class 
//
//////////////////////////////////////////////////////////

class assign_class : public Expression_class {
protected:
   Symbol name;
   Expression expr;
public:
   assign_class(Symbol a1, Expression a2) {
      name = a1;
      expr = a2;
   }
   Expression copy_Expression();
   void dump(ostream& stream, int n);

   /* ********** LP added functions ********** */
   Symbol get_name()              { return name; }
   Expression get_expression_1()  { return expr; }
   Expression get_expression_2()  { return NULL; }
   Expression get_expression_3()  { return NULL; }
   Symbol get_var_type()              { return NULL; } 
   Expressions get_expressions()  { return NULL; } 
   Cases get_cases()              { return NULL; } 
   Boolean get_bool_val()         { return true; }

   char* get_type_name()               { return "assign"; }

   /* ******** Type checker function *****************************************
    * This function recursively calculates the type of the current expression
    * using the type checker rules as described in the Cool Manual section 12.
    * The return value of this function is the type of the current node.
    *
    * Type checking rules for assignment:
    * name must have type T
    * expr must have type T'
    * T' must be a subtype of T
    * return type: The type of this node is T' 
    * ********************************************************************* */
   Symbol typecheck() {
      // TODO(nm): Symbols is an as of yet undefined symbol table storing
      //           all of the valid ids -> types in the current scope.
      //           Management of this data structure has not yet been 
      //           figured out.
      Symbol name_t = variables_in_scope->lookup(name);
      if (!name_t) {
         // TODO(nm): non-shitty error handling
         cerr << "Symbol " << name_t->get_string() << " not defined" << endl;
      }
      Symbol expr_t = expr->typecheck();
      if (!isparent(name_t, expr_t)) {
         // TODO(nm): non-shitty error handling
         cerr << "Type conformation error" << endl;
      }
      return expr_t;

   }
   /* ******** End LP added functions ******** */

#ifdef Expression_SHARED_EXTRAS
   Expression_SHARED_EXTRAS
#endif
#ifdef assign_EXTRAS
   assign_EXTRAS
#endif
};


// define constructor - static_dispatch

//////////////////////////////////////////////////////////
//
// static_dispatch_class 
//
//////////////////////////////////////////////////////////

class static_dispatch_class : public Expression_class {
protected:
   Expression expr;
   Symbol type_name;
   Symbol name;
   Expressions actual;
public:
   static_dispatch_class(Expression a1, Symbol a2, Symbol a3, Expressions a4) {
      expr = a1;
      type_name = a2;
      name = a3;
      actual = a4;
   }
   Expression copy_Expression();
   void dump(ostream& stream, int n);


   /* ********** LP added functions ********** */
   Symbol get_name()              { return name; } 
   Expression get_expression_1()  { return expr; } 
   Expression get_expression_2()  { return NULL; } 
   Expression get_expression_3()  { return NULL; } 
   Symbol get_var_type()              { return type_name; }  
   Expressions get_expressions()  { return actual; } 
   Cases get_cases()              { return NULL; }
   Boolean get_bool_val()         { return true; } 

   char* get_type_name()               { return "static_dispatch"; } 

    /* ******** Type checker function *****************************************
    * This function recursively calculates the type of the current expression
    * using the type checker rules as described in the Cool Manual section 12.
    * The return value of this function is the type of the current node.
    *
    * Type checking rules for static dispatch :
    * type of expr = T0
    * T0 is a subclass of type_name
    * type of expressions in actual = T1,...,Tn
    * Let the types in the formal in the method def be (T1',...,Tn')
    * For all 1 <= i <= n, Ti is a subclass of Ti'
    * Let T(n+1)' be the return type of the method
    * If T(n+1)' is SELF_TYPE, return T0, otherwise, return T(n+1)'
    * ********************************************************************* */
   Symbol typecheck() {
      Symbol expr_t = expr->typecheck();
      if (!isparent(type_name, expr_t)) {
         // TODO(nm): error
      }

      // TODO(nm): so just knowing the parent class is not enough. so, idea:
      // symbol table that maps methods to formal lists.
      // not hard to build; can be passed around same way as inheritance graph
      // yayyyyy
      return NULL;
   }
   /* ******** End LP added functions ******** */

#ifdef Expression_SHARED_EXTRAS
   Expression_SHARED_EXTRAS
#endif
#ifdef static_dispatch_EXTRAS
   static_dispatch_EXTRAS
#endif
};


// define constructor - dispatch

//////////////////////////////////////////////////////////
//
// dispatch_class 
//
//////////////////////////////////////////////////////////

class dispatch_class : public Expression_class {
protected:
   Expression expr;
   Symbol name;
   Expressions actual;
public:
   dispatch_class(Expression a1, Symbol a2, Expressions a3) {
      expr = a1;
      name = a2;
      actual = a3;
   }
   Expression copy_Expression();
   void dump(ostream& stream, int n);

   /* ********** LP added functions ********** */
   Symbol get_name()              { return name; } 
   Expression get_expression_1()  { return expr; } 
   Expression get_expression_2()  { return NULL; } 
   Expression get_expression_3()  { return NULL; } 
   Symbol get_var_type()              { return NULL; }  
   Expressions get_expressions()  { return actual; } 
   Cases get_cases()              { return NULL; }
   Boolean get_bool_val()         { return true; } 

   char* get_type_name()               { return "dispatch"; } 

   /* ******** Type checker function *****************************************
    * This function recursively calculates the type of the current expression
    * using the type checker rules as described in the Cool Manual section 12.
    * The return value of this function is the type of the current node.
    *
    * Type checking rules for static dispatch :
    * type of expr = T0
    * type of expressions in actual = T1,...,Tn
    * T0' is the current class if T0 is SELF_TYPE and T0 otherwise
    * Let the types in the formal in the method def be (T1',...,Tn')
    * For all 1 <= i <= n, Ti is a subclass of Ti'
    * Let T(n+1)' be the return type of the method
    * If T(n+1)' is SELF_TYPE, return T0, otherwise, return T(n+1)'
    * ********************************************************************* */
   Symbol typecheck() {

   }
   /* ******** End LP added functions ******** */

#ifdef Expression_SHARED_EXTRAS
   Expression_SHARED_EXTRAS
#endif
#ifdef dispatch_EXTRAS
   dispatch_EXTRAS
#endif
};


// define constructor - cond

//////////////////////////////////////////////////////////
//
// cond_class 
//
//////////////////////////////////////////////////////////

class cond_class : public Expression_class {
protected:
   Expression pred;
   Expression then_exp;
   Expression else_exp;
public:
   cond_class(Expression a1, Expression a2, Expression a3) {
      pred = a1;
      then_exp = a2;
      else_exp = a3;
   }
   Expression copy_Expression();
   void dump(ostream& stream, int n);

   /* ********** LP added functions ********** */
   Symbol get_name()              { return NULL; } 
   Expression get_expression_1()  { return pred; } 
   Expression get_expression_2()  { return then_exp; } 
   Expression get_expression_3()  { return else_exp; } 
   Symbol get_var_type()              { return NULL; }  
   Expressions get_expressions()  { return NULL; } 
   Cases get_cases()              { return NULL; }
   Boolean get_bool_val()         { return true; } 

   char* get_type_name()               { return "cond"; } 

   /* ******** Type checker function *****************************************
    * This function recursively calculates the type of the current expression
    * using the type checker rules as described in the Cool Manual section 12.
    * The return value of this function is the type of the current node.
    *
    * Type checking rules for conditional :
    * pred is of type Bool
    * the return type is the common parent type of then_exp and else_exp
    * ********************************************************************* */
   Symbol typecheck() {
      Symbol pred_t = pred->typecheck();
      if (strcmp(pred_t->get_string(), "Bool") != 0) {
         // TODO(nm): non-shitty error handling
         cerr << "Predicate type of if statement must be Bool." << endl;
      }
      Symbol then_t = then_exp->typecheck();
      Symbol else_t = else_exp->typecheck();
      return get_common_parent(then_t, else_t);
   }
   /* ******** End LP added functions ******** */

#ifdef Expression_SHARED_EXTRAS
   Expression_SHARED_EXTRAS
#endif
#ifdef cond_EXTRAS
   cond_EXTRAS
#endif
};


// define constructor - loop

//////////////////////////////////////////////////////////
//
// loop_class 
//
//////////////////////////////////////////////////////////

class loop_class : public Expression_class {
protected:
   Expression pred;
   Expression body;
public:
   loop_class(Expression a1, Expression a2) {
      pred = a1;
      body = a2;
   }
   Expression copy_Expression();
   void dump(ostream& stream, int n);

   /* ********** LP added functions ********** */
   Symbol get_name()              { return NULL; } 
   Expression get_expression_1()  { return pred; } 
   Expression get_expression_2()  { return body; } 
   Expression get_expression_3()  { return NULL; } 
   Symbol get_var_type()              { return NULL; }  
   Expressions get_expressions()  { return NULL; } 
   Cases get_cases()              { return NULL; }
   Boolean get_bool_val()         { return true; } 

   char* get_type_name()               { return "loop"; } 

    /* ******** Type checker function *****************************************
    * This function recursively calculates the type of the current expression
    * using the type checker rules as described in the Cool Manual section 12.
    * The return value of this function is the type of the current node.
    *
    * Type checking rules for loop :
    * predicate must be boolean
    * body can have any type
    * return type is Object
    * ********************************************************************* */
   Symbol typecheck() {
      Symbol pred_t = pred->typecheck();
      if (strcmp(pred_t->get_string(), "Bool") != 0) {
         // TODO(nm): non-shitty error handling
         cerr << "Predicate type of if statement must be Bool." << endl;
      }
      Symbol body_t = body->typecheck();

      // TODO(nm): is this the right way to do this?
      return Object;
   }
   /* ******** End LP added functions ******** */

#ifdef Expression_SHARED_EXTRAS
   Expression_SHARED_EXTRAS
#endif
#ifdef loop_EXTRAS
   loop_EXTRAS
#endif
};


// define constructor - typcase

//////////////////////////////////////////////////////////
//
// typcase_class 
//
//////////////////////////////////////////////////////////

class typcase_class : public Expression_class {
protected:
   Expression expr;
   Cases cases;
public:
   typcase_class(Expression a1, Cases a2) {
      expr = a1;
      cases = a2;
   }
   Expression copy_Expression();
   void dump(ostream& stream, int n);

   /* ********** LP added functions ********** */
   Symbol get_name()              { return NULL; } 
   Expression get_expression_1()  { return expr; } 
   Expression get_expression_2()  { return NULL; } 
   Expression get_expression_3()  { return NULL; } 
   Symbol get_var_type()              { return NULL; }  
   Expressions get_expressions()  { return NULL; } 
   Cases get_cases()              { return cases; }
   Boolean get_bool_val()         { return true; } 

   char* get_type_name()               { return "typcase"; } 

   /* ******** Type checker function *****************************************
    * This function recursively calculates the type of the current expression
    * using the type checker rules as described in the Cool Manual section 12.
    * The return value of this function is the type of the current node.
    *
    * Type checking rules for case expression :
    * 
    * ********************************************************************* */
   Symbol typecheck() {

   }
   /* ******** End LP added functions ******** */

#ifdef Expression_SHARED_EXTRAS
   Expression_SHARED_EXTRAS
#endif
#ifdef typcase_EXTRAS
   typcase_EXTRAS
#endif
};


// define constructor - block

//////////////////////////////////////////////////////////
//
// block_class 
//
//////////////////////////////////////////////////////////

class block_class : public Expression_class {
protected:
   Expressions body;
public:
   block_class(Expressions a1) {
      body = a1;
   }
   Expression copy_Expression();
   void dump(ostream& stream, int n);

   /* ********** LP added functions ********** */
   Symbol get_name()              { return NULL; } 
   Expression get_expression_1()  { return NULL; } 
   Expression get_expression_2()  { return NULL; } 
   Expression get_expression_3()  { return NULL; } 
   Symbol get_var_type()          { return NULL; }  
   Expressions get_expressions()  { return body; } 
   Cases get_cases()              { return NULL; }
   Boolean get_bool_val()         { return true; } 

   char* get_type_name()               { return "block"; } 

   /* ******** Type checker function *****************************************
    * This function recursively calculates the type of the current expression
    * using the type checker rules as described in the Cool Manual section 12.
    * The return value of this function is the type of the current node.
    *
    * Type checking rules for block class :
    * expresions can be any type
    * return type must be the type of the last expression
    * ********************************************************************* */
   Symbol typecheck() {
      Symbol t;
      for (int i = body->first(); body->more(i); i = body->next(i)) {
         t = body->nth(i)->typecheck();
      }
      return t;

   }
   /* ******** End LP added functions ******** */

#ifdef Expression_SHARED_EXTRAS
   Expression_SHARED_EXTRAS
#endif
#ifdef block_EXTRAS
   block_EXTRAS
#endif
};


// define constructor - let

//////////////////////////////////////////////////////////
//
// let_class 
//
//////////////////////////////////////////////////////////

class let_class : public Expression_class {
protected:
   Symbol identifier;
   Symbol type_decl;
   Expression init;
   Expression body;
public:
   let_class(Symbol a1, Symbol a2, Expression a3, Expression a4) {
      identifier = a1;
      type_decl = a2;
      init = a3;
      body = a4;
   }
   Expression copy_Expression();
   void dump(ostream& stream, int n);

   /* ********** LP added functions ********** */
   Symbol get_name()              { return identifier; } 
   Expression get_expression_1()  { return init; } 
   Expression get_expression_2()  { return body; } 
   Expression get_expression_3()  { return NULL; } 
   Symbol get_var_type()          { return type_decl; }  
   Expressions get_expressions()  { return NULL; } 
   Cases get_cases()              { return NULL; }
   Boolean get_bool_val()         { return true; } 

   char* get_type_name()               { return "let"; } 
    /* ******** Type checker function *****************************************
    * This function recursively calculates the type of the current expression
    * using the type checker rules as described in the Cool Manual section 12.
    * The return value of this function is the type of the current node.
    *
    * Type checking rules for let expressions :
    * 
    * ********************************************************************* */
   Symbol typecheck() {

   }
   /* ******** End LP added functions ******** */

#ifdef Expression_SHARED_EXTRAS
   Expression_SHARED_EXTRAS
#endif
#ifdef let_EXTRAS
   let_EXTRAS
#endif
};


// define constructor - plus

//////////////////////////////////////////////////////////
//
// plus_class 
//
//////////////////////////////////////////////////////////

class plus_class : public Expression_class {
protected:
   Expression e1;
   Expression e2;
public:
   plus_class(Expression a1, Expression a2) {
      e1 = a1;
      e2 = a2;
   }
   Expression copy_Expression();
   void dump(ostream& stream, int n);

   /* ********** LP added functions ********** */
   Symbol get_name()              { return NULL; } 
   Expression get_expression_1()  { return e1; } 
   Expression get_expression_2()  { return e2; } 
   Expression get_expression_3()  { return NULL; } 
   Symbol get_var_type()              { return NULL; }  
   Expressions get_expressions()  { return NULL; } 
   Cases get_cases()              { return NULL; }
   Boolean get_bool_val()         { return true; } 

   char* get_type_name()               { return "plus"; } 

   /* ******** Type checker function *****************************************
    * This function recursively calculates the type of the current expression
    * using the type checker rules as described in the Cool Manual section 12.
    * The return value of this function is the type of the current node.
    *
    * Type checking rules for arithmatic:
    * e1 must evaluate to type int
    * e2 must evaluate to type int
    * return type is int
    * ********************************************************************* */
   Symbol typecheck() {
      Symbol e1_t = e1->typecheck();
      if (strcmp(e1_t->get_string(), "Int") != 0) {
         // TODO(nm): non-shitty error handling
         cerr << "Both sides of an arithmatic expr must be ints." << endl;
      }
      Symbol e2_t = e2->typecheck();
      if (strcmp(e2_t->get_string(), "Int") != 0) {
         // TODO(nm): non-shitty error handling
         cerr << "Both sides of an arithmatic expr must be ints." << endl;
      }

      // TODO(nm): is this the right way to do this?
      return Int;
   }
   /* ******** End LP added functions ******** */

#ifdef Expression_SHARED_EXTRAS
   Expression_SHARED_EXTRAS
#endif
#ifdef plus_EXTRAS
   plus_EXTRAS
#endif
};


// define constructor - sub

//////////////////////////////////////////////////////////
//
// sub_class 
//
//////////////////////////////////////////////////////////

class sub_class : public Expression_class {
protected:
   Expression e1;
   Expression e2;
public:
   sub_class(Expression a1, Expression a2) {
      e1 = a1;
      e2 = a2;
   }
   Expression copy_Expression();
   void dump(ostream& stream, int n);

   /* ********** LP added functions ********** */
   Symbol get_name()              { return NULL; } 
   Expression get_expression_1()  { return e1; } 
   Expression get_expression_2()  { return e2; } 
   Expression get_expression_3()  { return NULL; } 
   Symbol get_var_type()              { return NULL; }  
   Expressions get_expressions()  { return NULL; } 
   Cases get_cases()              { return NULL; }
   Boolean get_bool_val()         { return true; } 

   char* get_type_name()               { return "sub"; } 
   
   /* ******** Type checker function *****************************************
    * This function recursively calculates the type of the current expression
    * using the type checker rules as described in the Cool Manual section 12.
    * The return value of this function is the type of the current node.
    *
    * Type checking rules for arithmatic:
    * e1 must evaluate to type int
    * e2 must evaluate to type int
    * return type is int
    * ********************************************************************* */
   Symbol typecheck() {
      Symbol e1_t = e1->typecheck();
      if (strcmp(e1_t->get_string(), "Int") != 0) {
         // TODO(nm): non-shitty error handling
         cerr << "Both sides of an arithmatic expr must be ints." << endl;
      }
      Symbol e2_t = e2->typecheck();
      if (strcmp(e2_t->get_string(), "Int") != 0) {
         // TODO(nm): non-shitty error handling
         cerr << "Both sides of an arithmatic expr must be ints." << endl;
      }

      // TODO(nm): is this the right way to do this?
      return Int;
   }
   /* ******** End LP added functions ******** */

#ifdef Expression_SHARED_EXTRAS
   Expression_SHARED_EXTRAS
#endif
#ifdef sub_EXTRAS
   sub_EXTRAS
#endif
};


// define constructor - mul

//////////////////////////////////////////////////////////
//
// mul_class 
//
//////////////////////////////////////////////////////////

class mul_class : public Expression_class {
protected:
   Expression e1;
   Expression e2;
public:
   mul_class(Expression a1, Expression a2) {
      e1 = a1;
      e2 = a2;
   }
   Expression copy_Expression();
   void dump(ostream& stream, int n);

   /* ********** LP added functions ********** */
   Symbol get_name()              { return NULL; } 
   Expression get_expression_1()  { return e1; } 
   Expression get_expression_2()  { return e2; } 
   Expression get_expression_3()  { return NULL; } 
   Symbol get_var_type()              { return NULL; }  
   Expressions get_expressions()  { return NULL; } 
   Cases get_cases()              { return NULL; }
   Boolean get_bool_val()         { return true; } 

   char* get_type_name()               { return "mul"; } 
   
   /* ******** Type checker function *****************************************
    * This function recursively calculates the type of the current expression
    * using the type checker rules as described in the Cool Manual section 12.
    * The return value of this function is the type of the current node.
    *
    * Type checking rules for arithmatic:
    * e1 must evaluate to type int
    * e2 must evaluate to type int
    * return type is int
    * ********************************************************************* */
   Symbol typecheck() {
      Symbol e1_t = e1->typecheck();
      if (strcmp(e1_t->get_string(), "Int") != 0) {
         // TODO(nm): non-shitty error handling
         cerr << "Both sides of an arithmatic expr must be ints." << endl;
      }
      Symbol e2_t = e2->typecheck();
      if (strcmp(e2_t->get_string(), "Int") != 0) {
         // TODO(nm): non-shitty error handling
         cerr << "Both sides of an arithmatic expr must be ints." << endl;
      }

      // TODO(nm): is this the right way to do this?
      return Int;
   }
   /* ******** End LP added functions ******** */

#ifdef Expression_SHARED_EXTRAS
   Expression_SHARED_EXTRAS
#endif
#ifdef mul_EXTRAS
   mul_EXTRAS
#endif
};


// define constructor - divide

//////////////////////////////////////////////////////////
//
// divide_class 
//
//////////////////////////////////////////////////////////

class divide_class : public Expression_class {
protected:
   Expression e1;
   Expression e2;
public:
   divide_class(Expression a1, Expression a2) {
      e1 = a1;
      e2 = a2;
   }
   Expression copy_Expression();
   void dump(ostream& stream, int n);

   /* ********** LP added functions ********** */
   Symbol get_name()              { return NULL; } 
   Expression get_expression_1()  { return e1; } 
   Expression get_expression_2()  { return e2; } 
   Expression get_expression_3()  { return NULL; } 
   Symbol get_var_type()              { return NULL; }  
   Expressions get_expressions()  { return NULL; } 
   Cases get_cases()              { return NULL; }
   Boolean get_bool_val()         { return true; } 

   char* get_type_name()               { return "divide"; } 
   
   /* ******** Type checker function *****************************************
    * This function recursively calculates the type of the current expression
    * using the type checker rules as described in the Cool Manual section 12.
    * The return value of this function is the type of the current node.
    *
    * Type checking rules for arithmatic:
    * e1 must evaluate to type int
    * e2 must evaluate to type int
    * return type is int
    * ********************************************************************* */
   Symbol typecheck() {
      Symbol e1_t = e1->typecheck();
      if (strcmp(e1_t->get_string(), "Int") != 0) {
         // TODO(nm): non-shitty error handling
         cerr << "Both sides of an arithmatic expr must be ints." << endl;
      }
      Symbol e2_t = e2->typecheck();
      if (strcmp(e2_t->get_string(), "Int") != 0) {
         // TODO(nm): non-shitty error handling
         cerr << "Both sides of an arithmatic expr must be ints." << endl;
      }

      // TODO(nm): is this the right way to do this?
      return Int;
   }
   /* ******** End LP added functions ******** */

#ifdef Expression_SHARED_EXTRAS
   Expression_SHARED_EXTRAS
#endif
#ifdef divide_EXTRAS
   divide_EXTRAS
#endif
};


// define constructor - neg

//////////////////////////////////////////////////////////
//
// neg_class 
//
//////////////////////////////////////////////////////////

class neg_class : public Expression_class {
protected:
   Expression e1;
public:
   neg_class(Expression a1) {
      e1 = a1;
   }
   Expression copy_Expression();
   void dump(ostream& stream, int n);

   /* ********** LP added functions ********** */
   Symbol get_name()              { return NULL; } 
   Expression get_expression_1()  { return e1; } 
   Expression get_expression_2()  { return NULL; } 
   Expression get_expression_3()  { return NULL; } 
   Symbol get_var_type()              { return NULL; }  
   Expressions get_expressions()  { return NULL; } 
   Cases get_cases()              { return NULL; }
   Boolean get_bool_val()         { return true; } 

   char* get_type_name()               { return "neg"; } 

   /* ******** Type checker function *****************************************
    * This function recursively calculates the type of the current expression
    * using the type checker rules as described in the Cool Manual section 12.
    * The return value of this function is the type of the current node.
    *
    * Type checking rules for neg expressions :
    * The expression must be a bool
    * The return type must be a bool
    * ********************************************************************* */
   Symbol typecheck() {
      Symbol e1_t = e1->typecheck();
      if (strcmp(e1_t->get_string(), "Bool") != 0) {
         // TODO(nm): error
      }

      // TODO(nm): correct?
      return Bool;
   }
   /* ******** End LP added functions ******** */

#ifdef Expression_SHARED_EXTRAS
   Expression_SHARED_EXTRAS
#endif
#ifdef neg_EXTRAS
   neg_EXTRAS
#endif
};


// define constructor - lt
class lt_class : public Expression_class {
protected:
   Expression e1;
   Expression e2;
public:
   lt_class(Expression a1, Expression a2) {
      e1 = a1;
      e2 = a2;
   }
   Expression copy_Expression();
   void dump(ostream& stream, int n);

   /* ********** LP added functions ********** */
   Symbol get_name()              { return NULL; } 
   Expression get_expression_1()  { return e1; } 
   Expression get_expression_2()  { return e2; } 
   Expression get_expression_3()  { return NULL; } 
   Symbol get_var_type()              { return NULL; }  
   Expressions get_expressions()  { return NULL; } 
   Cases get_cases()              { return NULL; }
   Boolean get_bool_val()         { return true; } 

   char* get_type_name()               { return "lt"; } 

   /* ******** Type checker function *****************************************
    * This function recursively calculates the type of the current expression
    * using the type checker rules as described in the Cool Manual section 12.
    * The return value of this function is the type of the current node.
    *
    * Type checking rules for lt expressions :
    * e1 and e2 are Ints
    * returns Bool
    * ********************************************************************* */
   Symbol typecheck() {
      Symbol e1_t = e1->typecheck();
      if (strcmp(e1_t->get_string(), "Int") != 0) {
         // TODO(nm): error
      }
      Symbol e2_t = e2->typecheck();
      if (strcmp(e2_t->get_string(), "Int") != 0) {
         // TODO(nm): error
      }

      return Bool;
      // TODO(nm): right?

   }
   /* ******** End LP added functions ******** */

#ifdef Expression_SHARED_EXTRAS
   Expression_SHARED_EXTRAS
#endif
#ifdef lt_EXTRAS
   lt_EXTRAS
#endif
};


// define constructor - eq

//////////////////////////////////////////////////////////
//
// eq_class 
//
//////////////////////////////////////////////////////////

class eq_class : public Expression_class {
protected:
   Expression e1;
   Expression e2;
public:
   eq_class(Expression a1, Expression a2) {
      e1 = a1;
      e2 = a2;
   }
   Expression copy_Expression();
   void dump(ostream& stream, int n);

   /* ********** LP added functions ********** */
   Symbol get_name()              { return NULL; } 
   Expression get_expression_1()  { return e1; } 
   Expression get_expression_2()  { return e2; } 
   Expression get_expression_3()  { return NULL; } 
   Symbol get_var_type()              { return NULL; }  
   Expressions get_expressions()  { return NULL; } 
   Cases get_cases()              { return NULL; }
   Boolean get_bool_val()         { return true; } 

   char* get_type_name()               { return "eq"; } 
   /* ******** Type checker function *****************************************
    * This function recursively calculates the type of the current expression
    * using the type checker rules as described in the Cool Manual section 12.
    * The return value of this function is the type of the current node.
    *
    * Type checking rules for eq expressions :
    * e1 and e2 are Ints, Bools, or Strings
    * type of e1 and type of e2 are the same
    * returns Bool
    * ********************************************************************* */
   Symbol typecheck() {
      Symbol e1_t = e1->typecheck();
      if (strcmp(e1_t->get_string(), "Int") != 0 && 
          strcmp(e1_t->get_string(), "Bool") != 0 &&
          strcmp(e1_t->get_string(), "String") != 0) {
         // TODO(nm): error
      }
      Symbol e2_t = e2->typecheck();
      if (strcmp(e2_t->get_string(), "Int") != 0
          strcmp(e2_t->get_string(), "Bool") != 0
          strcmp(e2_t->get_string(), "String") != 0) {
         // TODO(nm): error
      }

      if (strcmp(e1_t->get_string(), e2_t->get_string()) != 0) {
         // TODO(nm): error
      }

      return Bool;
      // TODO(nm): right?

   }
   /* ******** End LP added functions ******** */

#ifdef Expression_SHARED_EXTRAS
   Expression_SHARED_EXTRAS
#endif
#ifdef eq_EXTRAS
   eq_EXTRAS
#endif
};


// define constructor - leq

//////////////////////////////////////////////////////////
//
// leq_class 
//
//////////////////////////////////////////////////////////

class leq_class : public Expression_class {
protected:
   Expression e1;
   Expression e2;
public:
   leq_class(Expression a1, Expression a2) {
      e1 = a1;
      e2 = a2;
   }
   Expression copy_Expression();
   void dump(ostream& stream, int n);

   /* ********** LP added functions ********** */
   Symbol get_name()              { return NULL; } 
   Expression get_expression_1()  { return e1; } 
   Expression get_expression_2()  { return e2; } 
   Expression get_expression_3()  { return NULL; } 
   Symbol get_var_type()              { return NULL; }  
   Expressions get_expressions()  { return NULL; } 
   Cases get_cases()              { return NULL; }
   Boolean get_bool_val()         { return true; } 

   char* get_type_name()               { return "leq"; } 
   /* ******** Type checker function *****************************************
    * This function recursively calculates the type of the current expression
    * using the type checker rules as described in the Cool Manual section 12.
    * The return value of this function is the type of the current node.
    *
    * Type checking rules for leq expressions :
    * e1 and e2 are Ints
    * returns Bool
    * ********************************************************************* */
   Symbol typecheck() {
      Symbol e1_t = e1->typecheck();
      if (strcmp(e1_t->get_string(), "Int") != 0) {
         // TODO(nm): error
      }
      Symbol e2_t = e2->typecheck();
      if (strcmp(e2_t->get_string(), "Int") != 0) {
         // TODO(nm): error
      }

      return Bool;
      // TODO(nm): right?

   }
   /* ******** End LP added functions ******** */

#ifdef Expression_SHARED_EXTRAS
   Expression_SHARED_EXTRAS
#endif
#ifdef leq_EXTRAS
   leq_EXTRAS
#endif
};


// define constructor - comp

//////////////////////////////////////////////////////////
//
// comp_class 
//
//////////////////////////////////////////////////////////

class comp_class : public Expression_class {
protected:
   Expression e1;
public:
   comp_class(Expression a1) {
      e1 = a1;
   }
   Expression copy_Expression();
   void dump(ostream& stream, int n);

   /* ********** LP added functions ********** */
   Symbol get_name()              { return NULL; } 
   Expression get_expression_1()  { return e1; } 
   Expression get_expression_2()  { return NULL; } 
   Expression get_expression_3()  { return NULL; } 
   Symbol get_var_type()              { return NULL; }  
   Expressions get_expressions()  { return NULL; } 
   Cases get_cases()              { return NULL; }
   Boolean get_bool_val()         { return true; } 

   char* get_type_name()               { return "comp"; } 
   /* ******** Type checker function *****************************************
    * This function recursively calculates the type of the current expression
    * using the type checker rules as described in the Cool Manual section 12.
    * The return value of this function is the type of the current node.
    *
    * Type checking rules for ~ expressions :
    * e1 is an Int
    * returns Int
    * ********************************************************************* */
   Symbol typecheck() {
      Symbol e1_t = e1->typecheck();
      if (strcmp(e1_t->get_string(), "Int") != 0) {
         // TODO(nm): error
      }

      return Int;
      // TODO(nm): right?

   }
   /* ******** End LP added functions ******** */

#ifdef Expression_SHARED_EXTRAS
   Expression_SHARED_EXTRAS
#endif
#ifdef comp_EXTRAS
   comp_EXTRAS
#endif
};


// define constructor - int_const

//////////////////////////////////////////////////////////
//
// int_const_class 
//
//////////////////////////////////////////////////////////

class int_const_class : public Expression_class {
protected:
   Symbol token;
public:
   int_const_class(Symbol a1) {
      token = a1;
   }
   Expression copy_Expression();
   void dump(ostream& stream, int n);

   /* ********** LP added functions ********** */
   Symbol get_name()              { return token; } 
   Expression get_expression_1()  { return NULL; } 
   Expression get_expression_2()  { return NULL; } 
   Expression get_expression_3()  { return NULL; } 
   Symbol get_var_type()              { return NULL; }  
   Expressions get_expressions()  { return NULL; } 
   Cases get_cases()              { return NULL; }
   Boolean get_bool_val()         { return true; } 

   char* get_type_name()               { return "int_const"; } 

   /* ******** Type checker function *****************************************
    * This function recursively calculates the type of the current expression
    * using the type checker rules as described in the Cool Manual section 12.
    * The return value of this function is the type of the current node.
    *
    * Type checking rules for int_const expressions :
    * the string of token must be an integer
    * returns Int
    * ********************************************************************* */
   Symbol typecheck() {
      char * str = token->get_string();
      int len = strlen(str);
      for (int i = 0; i < len; i++) {
         if (isdigit(str[i]) == 0) {
            // TODO(nm): error
         }
      }

      return Int;
      // TODO(nm): right?
   }
   /* ******** End LP added functions ******** */

#ifdef Expression_SHARED_EXTRAS
   Expression_SHARED_EXTRAS
#endif
#ifdef int_const_EXTRAS
   int_const_EXTRAS
#endif
};


// define constructor - bool_const

//////////////////////////////////////////////////////////
//
// bool_const_class 
//
//////////////////////////////////////////////////////////

class bool_const_class : public Expression_class {
protected:
   Boolean val;
public:
   bool_const_class(Boolean a1) {
      val = a1;
   }
   Expression copy_Expression();
   void dump(ostream& stream, int n);

   /* ********** LP added functions ********** */
   Symbol get_name()              { return NULL; } 
   Expression get_expression_1()  { return NULL; } 
   Expression get_expression_2()  { return NULL; } 
   Expression get_expression_3()  { return NULL; } 
   Symbol get_var_type()              { return NULL; }  
   Expressions get_expressions()  { return NULL; } 
   Cases get_cases()              { return NULL; }
   Boolean get_bool_val()         { return val; } 

   char* get_type_name()               { return "bool_const"; } 

   /* ******** Type checker function *****************************************
    * This function recursively calculates the type of the current expression
    * using the type checker rules as described in the Cool Manual section 12.
    * The return value of this function is the type of the current node.
    *
    * Type checking rules for bool_const expressions :
    * return bool
    * ********************************************************************* */
   Symbol typecheck() {
      return Bool;
      // TODO(nm): right?
   }
   /* ******** End LP added functions ******** */

#ifdef Expression_SHARED_EXTRAS
   Expression_SHARED_EXTRAS
#endif
#ifdef bool_const_EXTRAS
   bool_const_EXTRAS
#endif
};


// define constructor - string_const

//////////////////////////////////////////////////////////
//
// string_const_class 
//
//////////////////////////////////////////////////////////

class string_const_class : public Expression_class {
protected:
   Symbol token;
public:
   string_const_class(Symbol a1) {
      token = a1;
   }
   Expression copy_Expression();
   void dump(ostream& stream, int n);

   /* ********** LP added functions ********** */
   Symbol get_name()              { return token; } 
   Expression get_expression_1()  { return NULL; } 
   Expression get_expression_2()  { return NULL; } 
   Expression get_expression_3()  { return NULL; } 
   Symbol get_var_type()              { return NULL; }  
   Expressions get_expressions()  { return NULL; } 
   Cases get_cases()              { return NULL; }
   Boolean get_bool_val()         { return true; } 

   char* get_type_name()               { return "string_const"; } 

   /* ******** Type checker function *****************************************
    * This function recursively calculates the type of the current expression
    * using the type checker rules as described in the Cool Manual section 12.
    * The return value of this function is the type of the current node.
    *
    * Type checking rules for string_const expressions :
    * return string
    * ********************************************************************* */
   Symbol typecheck() {
      return String;
      // TODO(nm): right?
   }
   /* ******** End LP added functions ******** */

#ifdef Expression_SHARED_EXTRAS
   Expression_SHARED_EXTRAS
#endif
#ifdef string_const_EXTRAS
   string_const_EXTRAS
#endif
};


// define constructor - new_

//////////////////////////////////////////////////////////
//
// new__class 
//
//////////////////////////////////////////////////////////

class new__class : public Expression_class {
protected:
   Symbol type_name;
public:
   new__class(Symbol a1) {
      type_name = a1;
   }
   Expression copy_Expression();
   void dump(ostream& stream, int n);

   /* ********** LP added functions ********** */
   Symbol get_name()              { return NULL; } 
   Expression get_expression_1()  { return NULL; } 
   Expression get_expression_2()  { return NULL; } 
   Expression get_expression_3()  { return NULL; } 
   Symbol get_var_type()              { return type_name; }  
   Expressions get_expressions()  { return NULL; } 
   Cases get_cases()              { return NULL; }
   Boolean get_bool_val()         { return true; } 

   char* get_type_name()               { return "new_"; } 

   /* ******** Type checker function *****************************************
    * This function recursively calculates the type of the current expression
    * using the type checker rules as described in the Cool Manual section 12.
    * The return value of this function is the type of the current node.
    *
    * Type checking rules for new_ expressions :
    * if type_name == SELF_TYPE, return the current class
    * otherwise, return type_name
    * PS make sure type_name is a valid type
    * ********************************************************************* */
   Symbol typecheck() {
      if (!inheritance_graph.lookup(type_name)) {
         // TODO(nm): error
      }

      if (strcmp(type_name->get_string(), "SELF_TYPE") == 0) {
         return root_class->get_name();
      }

      return type_name;
   }
   /* ******** End LP added functions ******** */

#ifdef Expression_SHARED_EXTRAS
   Expression_SHARED_EXTRAS
#endif
#ifdef new__EXTRAS
   new__EXTRAS
#endif
};


// define constructor - isvoid

//////////////////////////////////////////////////////////
//
// isvoid_class 
//
//////////////////////////////////////////////////////////

class isvoid_class : public Expression_class {
protected:
   Expression e1;
public:
   isvoid_class(Expression a1) {
      e1 = a1;
   }
   Expression copy_Expression();
   void dump(ostream& stream, int n);

   /* ********** LP added functions ********** */
   Symbol get_name()              { return NULL; } 
   Expression get_expression_1()  { return e1; } 
   Expression get_expression_2()  { return NULL; } 
   Expression get_expression_3()  { return NULL; } 
   Symbol get_var_type()              { return NULL; }  
   Expressions get_expressions()  { return NULL; } 
   Cases get_cases()              { return NULL; }
   Boolean get_bool_val()         { return true; } 

   char* get_type_name()               { return "isvoid"; } 

   /* ******** Type checker function *****************************************
    * This function recursively calculates the type of the current expression
    * using the type checker rules as described in the Cool Manual section 12.
    * The return value of this function is the type of the current node.
    *
    * Type checking rules for isvoid expressions :
    * return bool
    * ********************************************************************* */
   Symbol typecheck() {
      Symbol e1_t = e1->typecheck();
      return Bool;
   }
   /* ******** End LP added functions ******** */

#ifdef Expression_SHARED_EXTRAS
   Expression_SHARED_EXTRAS
#endif
#ifdef isvoid_EXTRAS
   isvoid_EXTRAS
#endif
};


// define constructor - no_expr

//////////////////////////////////////////////////////////
//
// no_expr_class 
//
//////////////////////////////////////////////////////////

class no_expr_class : public Expression_class {
protected:
public:
   no_expr_class() {
   }
   Expression copy_Expression();
   void dump(ostream& stream, int n);

   /* ********** LP added functions ********** */
   Symbol get_name()              { return NULL; } 
   Expression get_expression_1()  { return NULL; } 
   Expression get_expression_2()  { return NULL; } 
   Expression get_expression_3()  { return NULL; } 
   Symbol get_var_type()              { return NULL; }  
   Expressions get_expressions()  { return NULL; } 
   Cases get_cases()              { return NULL; }
   Boolean get_bool_val()         { return true; } 

   char* get_type_name()               { return "no_expr"; } 
   Symbol typecheck() {
      return No_class;
      //TODO(nm): correct?
   }
   /* ******** End LP added functions ******** */

#ifdef Expression_SHARED_EXTRAS
   Expression_SHARED_EXTRAS
#endif
#ifdef no_expr_EXTRAS
   no_expr_EXTRAS
#endif
};


// define constructor - object

//////////////////////////////////////////////////////////
//
// object_class 
//
//////////////////////////////////////////////////////////

class object_class : public Expression_class {
protected:
   Symbol name;
public:
   object_class(Symbol a1) {
      name = a1;
   }
   Expression copy_Expression();
   void dump(ostream& stream, int n);

   /* ********** LP added functions ********** */
   Symbol get_name()              { return name; } 
   Expression get_expression_1()  { return NULL; } 
   Expression get_expression_2()  { return NULL; } 
   Expression get_expression_3()  { return NULL; } 
   Symbol get_var_type()              { return NULL; }  
   Expressions get_expressions()  { return NULL; } 
   Cases get_cases()              { return NULL; }
   Boolean get_bool_val()         { return true; } 

   char* get_type_name()               { return "object"; } 
   Symbol typecheck() {
      if (!variables_in_scope->lookup(name)) {
         //TODO(nm): error
      }
      return variables_in_scope->lookup(name);
   }
   /* ******** End LP added functions ******** */

#ifdef Expression_SHARED_EXTRAS
   Expression_SHARED_EXTRAS
#endif
#ifdef object_EXTRAS
   object_EXTRAS
#endif
};


// define the prototypes of the interface
Classes nil_Classes();
Classes single_Classes(Class_);
Classes append_Classes(Classes, Classes);
Features nil_Features();
Features single_Features(Feature);
Features append_Features(Features, Features);
Formals nil_Formals();
Formals single_Formals(Formal);
Formals append_Formals(Formals, Formals);
Expressions nil_Expressions();
Expressions single_Expressions(Expression);
Expressions append_Expressions(Expressions, Expressions);
Cases nil_Cases();
Cases single_Cases(Case);
Cases append_Cases(Cases, Cases);
Program program(Classes);
Class_ class_(Symbol, Symbol, Features, Symbol);
Feature method(Symbol, Formals, Symbol, Expression);
Feature attr(Symbol, Symbol, Expression);
Formal formal(Symbol, Symbol);
Case branch(Symbol, Symbol, Expression);
Expression assign(Symbol, Expression);
Expression static_dispatch(Expression, Symbol, Symbol, Expressions);
Expression dispatch(Expression, Symbol, Expressions);
Expression cond(Expression, Expression, Expression);
Expression loop(Expression, Expression);
Expression typcase(Expression, Cases);
Expression block(Expressions);
Expression let(Symbol, Symbol, Expression, Expression);
Expression plus(Expression, Expression);
Expression sub(Expression, Expression);
Expression mul(Expression, Expression);
Expression divide(Expression, Expression);
Expression neg(Expression);
Expression lt(Expression, Expression);
Expression eq(Expression, Expression);
Expression leq(Expression, Expression);
Expression comp(Expression);
Expression int_const(Symbol);
Expression bool_const(Boolean);
Expression string_const(Symbol);
Expression new_(Symbol);
Expression isvoid(Expression);
Expression no_expr();
Expression object(Symbol);


#endif
