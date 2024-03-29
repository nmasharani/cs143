/*
* cool.y
*              Parser definition for the COOL language.
*
*/
%{
  #include <iostream>
  #include "cool-tree.h"
  #include "stringtab.h"
  #include "utilities.h"
  
  extern char *curr_filename;
  
  
  /* Locations */
  #define YYLTYPE int              /* the type of locations */
  #define cool_yylloc curr_lineno  /* use the curr_lineno from the lexer
  for the location of tokens */
    
    extern int node_lineno;          /* set before constructing a tree node
    to whatever you want the line number
    for the tree node to be */
      
      
      #define YYLLOC_DEFAULT(Current, Rhs, N)         \
      Current = Rhs[1];                             \
      node_lineno = Current;
    
    
    #define SET_NODELOC(Current)  \
    node_lineno = Current;
    
    /* IMPORTANT NOTE ON LINE NUMBERS
    *********************************
    * The above definitions and macros cause every terminal in your grammar to 
    * have the line number supplied by the lexer. The only task you have to
    * implement for line numbers to work correctly, is to use SET_NODELOC()
    * before constructing any constructs from non-terminals in your grammar.
    * Example: Consider you are matching on the following very restrictive 
    * (fictional) construct that matches a plus between two integer constants. 
    * (SUCH A RULE SHOULD NOT BE  PART OF YOUR PARSER):
    
    plus_consts	: INT_CONST '+' INT_CONST 
    
    * where INT_CONST is a terminal for an integer constant. Now, a correct
    * action for this rule that attaches the correct line number to plus_const
    * would look like the following:
    
    plus_consts	: INT_CONST '+' INT_CONST 
    {
      // Set the line number of the current non-terminal:
      // ***********************************************
      // You can access the line numbers of the i'th item with @i, just
      // like you acess the value of the i'th exporession with $i.
      //
      // Here, we choose the line number of the last INT_CONST (@3) as the
      // line number intof the resulting expression (@$). You are free to pick
      // any reasonable line as the line number of non-terminals. If you 
      // omit the statement @$=..., bison has default rules for deciding which 
      // line number to use. Check the manual for details if you are interested.
      @$ = @3;
      
      
      // Observe that we call SET_NODELOC(@3); this will set the global variable
      // node_lineno to @3. Since the constructor call "plus" uses the value of 
      // this global, the plus node will now have the correct line number.
      SET_NODELOC(@3);
      
      // construct the result node:
      $$ = plus(int_const($1), int_const($3));
    }
    
    */
    
    
    
    void yyerror(char *s);        /*  defined below; called for each parse error */
    extern int yylex();           /*  the entry point to the lexer  */
    
    /************************************************************************/
    /*                DONT CHANGE ANYTHING IN THIS SECTION                  */
    
    Program ast_root;	      /* the result of the parse  */
    Classes parse_results;        /* for use in semantic analysis */
    int omerrs = 0;               /* number of errors in lexing and parsing */
    %}
    
    /* A union of all the types that can be the result of parsing actions. */
    /* The union declaration specifies the entire collection of possible */
    /* data types for semantic values. */
    %union {
      Boolean boolean;
      Symbol symbol;
      Program program;
      Class_ class_;
      Classes classes;
      Feature feature;
      Features features;
      Formal formal;
      Formals formals;
      Case case_;
      Cases cases;
      Expression expression;
      Expressions expressions;
      char *error_msg;
    }
    
    /* 
    Declare the terminals; a few have types for associated lexemes.
    The token ERROR is never used in the parser; thus, it is a parse
    error when the lexer returns it.
    
    The integer following token declaration is the numeric constant used
    to represent that token internally.  Typically, Bison generates these
    on its own, but we give explicit numbers to prevent version parity
    problems (bison 1.25 and earlier start at 258, later versions -- at
    257)
    */
    %token CLASS 258 ELSE 259 FI 260 IF 261 IN 262 
    %token INHERITS 263 LET 264 LOOP 265 POOL 266 THEN 267 WHILE 268
    %token CASE 269 ESAC 270 OF 271 DARROW 272 NEW 273 ISVOID 274
    %token <symbol>  STR_CONST 275 INT_CONST 276 
    %token <boolean> BOOL_CONST 277
    %token <symbol>  TYPEID 278 OBJECTID 279 
    %token ASSIGN 280 NOT 281 LE 282 ERROR 283
    
    /*  DON'T CHANGE ANYTHING ABOVE THIS LINE, OR YOUR PARSER WONT WORK       */
    /**************************************************************************/
    
    /* Complete the nonterminal list below, giving a type for the semantic
    value of each non terminal. (See section 3.6 in the bison 
    documentation for details). */
    
    /* Declare types for the grammar's non-terminals. */
    %type <program> program
    %type <classes> class_list
    %type <class_> class
    %type <features> feature_list
    %type <feature> feature
    %type <formals> formal_list
    %type <formal> formal
    %type <expression> expr
    %type <expressions> expr_list_comma
    %type <expressions> expr_list_semicolon
    
    %type <expression> let_list
    
    %type <case_> case
    %type <cases> case_list

    
    /* Precedence declarations go here.                              */
    /* Per the Bison documentation, we list them in reverse order as */
    /* the lower on the list, the higher the precendence.            */

    %left LET_PREC
    %right ASSIGN
    %left NOT
    %nonassoc LE '<' '='
    %left '+' '-'
    %left '*' '/'
    %left ISVOID
    %left '~'
    %left '@'
    %left '.'


    %%

    /*******************************************************************/
    /**********************   PROGRAM   ********************************/
    /*******************************************************************/

    /* Save the root of the abstract syntax tree in a global variable. */
    program	: class_list	
    { 
        @$ = @1; 
        ast_root = program($1); 
    };
    
    /* single class */
    class_list : class 	
    { 
        @$ = @1;
        SET_NODELOC(@1);
        $$ = single_Classes($1);
        parse_results = $$; 
    };

    /* several classes */
    class_list : class_list class 
    { 
        @$ = @1;
        SET_NODELOC(@1);
        $$ = append_Classes($1,single_Classes($2)); 
        parse_results = $$; 
    };

    /*******************************************************************/
    /************************   CLASS   ********************************/
    /*******************************************************************/

    /* If no parent is specified, the class inherits from the Object class. */
    /* Note, we add the object to the stringtable here */
    class : CLASS TYPEID '{' feature_list '}' ';'
    { 
        @$ = @1;
        SET_NODELOC(@1);
        $$ = class_($2,idtable.add_string("Object"),$4,stringtable.add_string(curr_filename)); 
    };

    /* Standard class definition with an inherits */
    class : CLASS TYPEID INHERITS TYPEID '{' feature_list '}' ';'
    { 
        @$ = @1;
        SET_NODELOC(@1);
        $$ = class_($2,$4,$6,stringtable.add_string(curr_filename)); 
    };

    /*******************************************************************/
    /********************  CLASS ERROR CASES  **************************/
    /*******************************************************************/

	class : CLASS error '{' feature_list '}' ';' {};

    /*******************************************************************/
   /************************   FEATURE LIST   *************************/
    /*******************************************************************/
    
    feature_list: /* empty */ 
    {  
        $$ = nil_Features(); 
    };

    feature_list: feature_list feature ';'
    { 
        @$ = @1;
        SET_NODELOC(@1);
        $$ = append_Features($1, single_Features($2)); 
    };

    /*******************************************************************/
    /************************   FEATURE    *****************************/
    /*******************************************************************/

    /* method: no formal list */
    feature: OBJECTID '(' ')' ':' TYPEID '{' expr '}' 
    { 
        @$ = @1;
        SET_NODELOC(@1);
        $$ = method($1, nil_Formals(), $5, $7); 
    };
    
    /* method: formal list */
    feature: OBJECTID '(' formal_list ')' ':' TYPEID '{' expr '}' 
    { 
        @$ = @1;
        SET_NODELOC(@1);
        $$ = method($1, $3, $6, $8); 
    };
    
    /* attribute: no assignment */
    feature: OBJECTID ':' TYPEID 
    { 
        @$ = @1;
        SET_NODELOC(0);
        Expression x = no_expr();
        SET_NODELOC(@1);
        $$ = attr($1, $3, x); 
    };

    /* attribute: assignment */
    feature: OBJECTID ':' TYPEID ASSIGN expr
    { 
        @$ = @1;
        SET_NODELOC(@1);
        $$ = attr($1, $3, $5); 
    };

    /*******************************************************************/
    /*********************   FEATURE ERRORS    *************************/
    /*******************************************************************/

    feature_list: feature_list error ';' { };

    /*******************************************************************/
    /************************   FORMAL LIST    *************************/
    /*******************************************************************/

    formal_list: formal
    { 
        @$ = @1;
        SET_NODELOC(@1);
        $$ = single_Formals($1); 
    };

    formal_list: formal_list ',' formal
    { 
        @$ = @1;
        SET_NODELOC(@1);
        $$ = append_Formals($1, single_Formals($3)); 
    };

    /*******************************************************************/
    /************************   FORMAL     *****************************/
    /*******************************************************************/

    formal: OBJECTID ':' TYPEID
    { 
        @$ = @1;
        SET_NODELOC(@1);
        $$ = formal($1, $3);
    };

    /*******************************************************************/
    /************************   EXPR 1    ******************************/
    /*******************************************************************/
    /* 1: assignment */

    expr: OBJECTID ASSIGN expr
    { 
        @$ = @1;
        SET_NODELOC(@1);
        $$ = assign($1, $3); 
    };

    /*******************************************************************/
    /************************   EXPR 2    ******************************/
    /*******************************************************************/
    /* 2: dispatch */

    /*  static dispatch - with type and with expression list */
    expr : expr '@' TYPEID '.' OBJECTID '(' expr_list_comma ')'
    { 
        @$ = @5;
        SET_NODELOC(@5);
        $$ = static_dispatch($1, $3, $5, $7); 
    };
    
    /*  static dispatch - with type but no expression list */
    expr : expr '@' TYPEID '.' OBJECTID '(' ')'
    { 
        @$ = @5;
        SET_NODELOC(@5);
        $$ = static_dispatch($1, $3, $5, nil_Expressions()); 
    };
    
    /* Dynamic dispatch - with expression list */
    /* Note, add SELF_TYPE to idtable, as it is infered by syntax here */
    expr : expr '.' OBJECTID '(' expr_list_comma ')'
    { 
        @$ = @3;
        SET_NODELOC(@3);
        $$ = dispatch($1, $3, $5); 
    };

    /* Dynamic dispatch - no expression list */
    /* Note, add SELF_TYPE to idtable, as it is infered by syntax here */
    expr : expr '.' OBJECTID '(' ')'
    { 
        @$ = @3;
        SET_NODELOC(@3);
        $$ = dispatch($1, $3, nil_Expressions()); 
    };

    /*******************************************************************/
    /************************   EXPR 3    ******************************/
    /*******************************************************************/
    /* 3: more dispatch: no expression */

    /*  expression list */
    /* Note, add self to the idtable, as it is implied by syntax (Section 7.4) */
    expr : OBJECTID '(' expr_list_comma ')'
    { 
        @$ = @1;
        SET_NODELOC(@1);
        IdEntry * caller = idtable.add_string("self");
        $$ = dispatch(object(caller), $1, $3); 
    };

    /* no expression list */
    /* Note, add self to the idtable, as it is implied by syntax (Section 7.4) */
    expr : OBJECTID '(' ')'
    { 
        @$ = @1;
        SET_NODELOC(@1);
        IdEntry * caller = idtable.add_string("self");
        $$ = dispatch(object(caller), $1, nil_Expressions()); 
    };

    /*******************************************************************/
    /************************   EXPR 4    ******************************/
    /*******************************************************************/
    /* 4: Conditionals */

    expr : IF expr THEN expr ELSE expr FI
    { 
        @$ = @1;
        SET_NODELOC(@1);
        $$ = cond($2, $4, $6); 
    };

    /*******************************************************************/
    /************************   EXPR 5    ******************************/
    /*******************************************************************/
    /* 5: While loop */

    expr : WHILE expr LOOP expr POOL
    { 
        @$ = @1;
        SET_NODELOC(@1);
        $$ = loop($2, $4); 
    };

    /*******************************************************************/
    /************************   EXPR 6    ******************************/
    /*******************************************************************/
    /* 6 : block */

    expr :  '{' expr_list_semicolon '}'
    { 
        @$ = @1;
        SET_NODELOC(@1);
        $$ = block($2); 
    };

    /*******************************************************************/
    /**********************   BLOCK ERROR   ****************************/
    /*******************************************************************/

    expr :  '{' error '}' {};

    /*******************************************************************/
    /************************   EXPR 7    ******************************/
    /*******************************************************************/
    /* 7: let statements */

    expr : LET let_list 
    {
        @$ = @1;
        SET_NODELOC(@1);
        $$ = $2;
    };

    let_list : OBJECTID ':' TYPEID IN expr %prec LET_PREC
    { 
        @$ = @1;
        SET_NODELOC(0);
        Expression x = no_expr();
        SET_NODELOC(@1);
        $$ = let($1, $3, x, $5); 
    };

    let_list: OBJECTID ':' TYPEID ASSIGN expr IN expr %prec LET_PREC
    { 
        @$ = @1;
        SET_NODELOC(@1);
        $$ = let($1, $3, $5, $7); 
    };
    
    let_list : OBJECTID ':' TYPEID ',' let_list
    { 
        @$ = @1;
        SET_NODELOC(0);
        Expression x = no_expr();
        SET_NODELOC(@1);
        $$ = let($1, $3, x, $5); 
    };

    let_list: OBJECTID ':' TYPEID ASSIGN expr ',' let_list
    { 
        @$ = @1;
        SET_NODELOC(@1);
        $$ = let($1, $3, $5, $7); 
    };

    /*******************************************************************/
    /*******************   LET STATEMENT ERRORS    *********************/
    /*******************************************************************/

	let_list: error ',' let_list { };

    /*******************************************************************/
    /************************   EXPR 8    ******************************/
    /*******************************************************************/
    /* 8: case */

    expr : CASE expr OF case_list ESAC
    { 
        @$ = @1;
        SET_NODELOC(@1);
        $$ = typcase($2, $4); 
    };

    case: OBJECTID ':' TYPEID DARROW expr ';'
    { 
        @$ = @1;
        SET_NODELOC(@1);
        $$ = branch($1, $3, $5); 
    };

    case_list: case
    { 
        @$ = @1;
        SET_NODELOC(@1);
        $$ = single_Cases($1); 
    };

    case_list: case_list case
    { 
        @$ = @2;
        SET_NODELOC(@2);
        $$ = append_Cases($1, single_Cases($2)); 
    };

    /*******************************************************************/
    /************************   EXPR 9    ******************************/
    /*******************************************************************/
    /* 9: new type */

    expr : NEW TYPEID
    { 
        @$ = @2;
        SET_NODELOC(@2);
        $$ = new_($2); 
    };
    
    /*******************************************************************/
    /************************   EXPR 10   ******************************/
    /*******************************************************************/
    /* 10: isvoid */

    expr : ISVOID expr
    { 
        @$ = @2;
        SET_NODELOC(@2);
        $$ = isvoid($2); 
    };
    
    /*******************************************************************/
    /************************   EXPR 11   ******************************/
    /*******************************************************************/
    /* 11: expression addition */

    expr : expr '+' expr
    { 
        @$ = @3;
        SET_NODELOC(@3);
        $$ = plus($1, $3); 
    };
    
    /*******************************************************************/
    /************************   EXPR 12   ******************************/
    /*******************************************************************/
    /* 12: expression subtraction */

    expr : expr '-' expr
    { 
        @$ = @3;
        SET_NODELOC(@3);
        $$ = sub($1, $3); 
    };

    /*******************************************************************/
    /************************   EXPR 13   ******************************/
    /*******************************************************************/
    /* 13: expression multiplication */

    expr : expr '*' expr
    { 
        @$ = @3;
        SET_NODELOC(@3);
        $$ = mul($1, $3); 
    };

    /*******************************************************************/
    /************************   EXPR 14   ******************************/
    /*******************************************************************/
    /* 14: expression division */

    expr : expr '/' expr
    { 
        @$ = @3;
        SET_NODELOC(@3);
        $$ = divide($1, $3); 
    };

    /*******************************************************************/
    /************************   EXPR 15   ******************************/
    /*******************************************************************/
    /* 15: expression negation */

    expr : '~' expr
    { 
        @$ = @2;
        SET_NODELOC(@2);
        $$ = neg($2); 
    };

    /*******************************************************************/
    /************************   EXPR 16   ******************************/
    /*******************************************************************/
    /* 16: expression comparison '<' */
    expr : expr '<' expr
    { 
        @$ = @3;
        SET_NODELOC(@3);
        $$ = lt($1, $3); 
    };

    /*******************************************************************/
    /************************   EXPR 17   ******************************/
    /*******************************************************************/
    /* 17: expression comparison '<=' */

    expr : expr LE expr
    { 
        @$ = @3;
        SET_NODELOC(@3);
        $$ = leq($1, $3); 
    };

    /*******************************************************************/
    /************************   EXPR 18   ******************************/
    /*******************************************************************/
    /* 18: expression comparison '=' */

    expr : expr '=' expr
    { 
        @$ = @3;
        SET_NODELOC(@3);
        $$ = eq($1, $3); 
    };

    /*******************************************************************/
    /************************   EXPR 19   ******************************/
    /*******************************************************************/
    /* 19: expression not */

    expr : NOT expr
    { 
        @$ = @2;
        SET_NODELOC(@2);
        $$ = comp($2); 
    };

    /*******************************************************************/
    /************************   EXPR 20   ******************************/
    /*******************************************************************/
    /* 20: expression in parens */

    expr : '(' expr ')'
    { 
        @$ = @2;
        SET_NODELOC(@2);
        $$ = $2; 
    };

    /*******************************************************************/
    /************************   EXPR 21   ******************************/
    /*******************************************************************/
    /* 21: expression ID */

    expr : OBJECTID
    { 
        @$ = @1;
        SET_NODELOC(@1);
        $$ = object($1); 
    };

    /*******************************************************************/
    /************************   EXPR 22   ******************************/
    /*******************************************************************/
    /* 22: expression integer constant */

    expr : INT_CONST
    { 
        @$ = @1;
        SET_NODELOC(@1);
        $$ = int_const($1); 
    };

    /*******************************************************************/
    /************************   EXPR 23   ******************************/
    /*******************************************************************/
    /* 23: expression string constant */

    expr : STR_CONST
    { 
        @$ = @1;
        SET_NODELOC(@1);
        $$ = string_const($1); 
    };

    /*******************************************************************/
    /************************   EXPR 24/25   ***************************/
    /*******************************************************************/
    /* 24/25: expression boolean constant */

    expr : BOOL_CONST
    { 
        @$ = @1;
        SET_NODELOC(@1);
        $$ = bool_const($1); 
    };

    /*******************************************************************/
    /**********************   EXPR List Semicolon   ********************/
    /*******************************************************************/

    expr_list_semicolon : expr ';'
    { 
        @$ = @1;
        SET_NODELOC(@1);
        $$ = single_Expressions($1); 
    };

    expr_list_semicolon : expr_list_semicolon expr ';'
    { 
        @$ = @1;
        SET_NODELOC(@1);
        $$ = append_Expressions($1, single_Expressions($2)); 
    };

    /*******************************************************************/
    /**********************   EXPR List Comma   ************************/
    /*******************************************************************/

    expr_list_comma : expr 
    { 
        @$ = @1;
        SET_NODELOC(@1);
        $$ = single_Expressions($1); 
    };

    expr_list_comma : expr_list_comma ',' expr
    { 
        @$ = @1;
        SET_NODELOC(@1);
        $$ = append_Expressions($1, single_Expressions($3)); 
    };

    /*******************************************************************/
    /**********************    END OF GRAMMAR   ************************/
    /*******************************************************************/
    /* end of grammar */

    %%
    
    
    /* This function is called automatically when Bison detects a parse error. */
    void yyerror(char *s)
    {
      extern int curr_lineno;
      
      cerr << "\"" << curr_filename << "\", line " << curr_lineno << ": " \
      << s << " at or near ";
      print_cool_token(yychar);
      cerr << endl;
      omerrs++;
      
      if(omerrs>50) {fprintf(stdout, "More than 50 errors\n"); exit(1);}
    }
