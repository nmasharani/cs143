/*
*  cool.y
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
      // line number of the resulting expression (@$). You are free to pick
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
    %type <features> let_list
    %type <feature> let_attr
    %type <case_> case
    %type <cases> case_list
    
    /* You will want to change the following line. */
    /*%type <features> dummy_feature_list*/
    
    /* Precedence declarations go here. */
    
    %%
    /* 
    Save the root of the abstract syntax tree in a global variable.
    */
    program	: class_list	{ @$ = @1; ast_root = program($1); }
    ;
    
    class_list
    : class			/* single class */
    { $$ = single_Classes($1);
    parse_results = $$; }
    | class_list class	/* several classes */
    { $$ = append_Classes($1,single_Classes($2)); 
    parse_results = $$; }
    ;
    
    /* If no parent is specified, the class inherits from the Object class. */
    class	: CLASS TYPEID '{' feature_list '}' ';'
    { $$ = class_($2,idtable.add_string("Object"),$4,
    stringtable.add_string(curr_filename)); }
    | CLASS TYPEID INHERITS TYPEID '{' feature_list '}' ';'
    { $$ = class_($2,$4,$6,stringtable.add_string(curr_filename)); }
    ;

    /* feature_list */
    /* perhaps non-dummy feature list? feature list can either be empty or */
    /* have 1+ features */
    /* TODO: rules */
    feature_list:
    /* empty */ 
    { $$ = nil_Features(); }
    | feature 
    { $$ = single_Features($1); }
    | feature_list feature 
    { $$ = append_Features($1, single_Features($2)); }
    ;

    /* feature */
    /* Currently, does not modify idtables, etc. TODO: maybe should? */
    feature:
    /* method: no formal list */
    OBJECTID '(' ')' ':' TYPEID '{' expr '}'
    { $$ = method($1, nil_Formals(), $5, $7); }
    
    /* method: formal list */
    | OBJECTID '(' formal_list ')' ':' TYPEID '{' expr '}'
    { $$ = method($1, $3, $6, $8); }
    
    /* attribute: no assignment */
    | OBJECTID ':' TYPEID 
    { $$ = attr($1, $3, no_expr()); }

    /* attribute: assignment */
    | OBJECTID ':' TYPEID ASSIGN expr
    { $$ = attr($1, $3, $5); }
    ;

    /* formal_list */
    /* TODO: also rules here */
    formal_list:
    formal
    { $$ = single_Formals($1); }
    | formal_list ',' formal
    { $$ = append_Formals($1, single_Formals($3)); }
    ;

    /* formal */
    /* TODO: rules */
    formal:
    OBJECTID ':' TYPEID
    { $$ = formal($1, $3); }
    ;

    expr:

    /* 1: assignment */
    OBJECTID ASSIGN expr
    { $$ = assign($1, $3); }

    /* 2: dispatch */
    
    /*  static dispatch - with type and with expression list */
    | expr '@' TYPEID '.' OBJECTID '(' expr_list_comma ')'
    { $$ = static_dispatch($1, $3, $5, $7); }
    
    /*  static dispatch - with type but no expression list */
    | expr '@' TYPEID '.' OBJECTID '(' ')'
    { $$ = static_dispatch($1, $3, $5, nil_Expressions()); }
    
    /*  dynamic dispatch - with expression list */
    | expr '.' OBJECTID '(' expr_list_comma ')'
    { $$ = dispatch($1, $3, $5); }

    /*  dynamic dispatch - no expression list */
    | expr '.' OBJECTID '(' ')'
    { $$ = dispatch($1, $3, nil_Expressions()); }

    /* 3: more dispatch: no expression */

    /*  expression list */
    | OBJECTID '(' expr_list_comma ')'
    { $$ = dispatch(no_expr(), $1, $3); }

    /* no expression list */
    | OBJECTID '(' ')'
    { $$ = dispatch(no_expr(), $1, nil_Expressions()); }

    /* 4: Conditionals */
    | IF expr THEN expr ELSE expr FI
    { $$ = cond($2, $4, $6); }

    /* 5: While loop */
    | WHILE expr LOOP expr POOL
    { $$ = loop($2, $4); }

    /* 6 : block */
    | '{' expr_list_semicolon '}'
    { $$ = block($2); }

    /* 7 */
    | LET let_list IN expr
    {
        Expression body = $4;
        Features let_list = $2;
        int let_list_len = let_list->len();
        for (int i = let_list_len - 1; i >= 0; i--) {
            Feature elem = let_list->nth(i);
            Expression nested = let(elem->get_name(), elem->get_type_decl(), \
                                    elem->get_init(), body);
            body = nested;
        }
        $$ = body;

    }

    /* 8 */
    | CASE expr OF case_list ESAC
    { $$ = typcase($2, $4); }

    /* 9 */
    | NEW TYPEID
    { $$ = new_($2); }
    
    /* 10 */
    | ISVOID expr
    { $$ = isvoid($2); }
    
    /* 11 */
    | expr '+' expr
    { $$ = plus($1, $3); }
    
    /* 12 */
    | expr '-' expr
    { $$ = sub($1, $3); }

    /* 13 */
    | expr '*' expr
    { $$ = mul($1, $3); }

    /* 14 */
    | expr '/' expr
    { $$ = divide($1, $3); }

    /* 15 */
    | '~' expr
    { $$ = neg($2); }

    /* 16 */
    | expr '<' expr
    { $$ = lt($1, $3); }

    /* 17 */
    | expr LE expr
    { $$ = leq($1, $3); }

    /* 18 */
    | expr '=' expr
    { $$ = eq($1, $3); }

    /* 19 */
    | NOT expr
    { $$ = comp($2); }

    /* 20 */
    | '(' expr ')'
    { $$ = $2; }

    /* 21 */
    | OBJECTID
    { $$ = object($1); }

    /* 22 */
    | INT_CONST
    { $$ = int_const($1); }

    /* 23 */
    | STR_CONST
    { $$ = string_const($1); }

    /* 24 */
    | BOOL_CONST
    { $$ = bool_const($1); }
    ;

    let_attr:
    OBJECTID ':' TYPEID
    { $$ = attr($1, $3, no_expr()); }
    | OBJECTID ':' TYPEID ASSIGN expr
    { $$ = attr($1, $3, $5); }
    ;

    let_list:
    let_attr
    { $$ = single_Features($1); }
    | let_list ',' let_attr
    { $$ = append_Features($1, single_Features($3)); }
    ;

    case_list:
    case
    { $$ = single_Cases($1); }
    | case_list case
    { $$ = append_Cases($1, single_Cases($2)); }
    ;

    case:
    OBJECTID ':' TYPEID DARROW expr ';'
    { $$ = branch($1, $3, $5); }
    ;

    expr_list_semicolon:
    expr ';'
    { $$ = single_Expressions($1); }
    | expr_list_semicolon expr ';'
    { $$ = append_Expressions($1, single_Expressions($2)); }
    ;

    expr_list_comma:
    expr
    { $$ = single_Expressions($1); }
    | expr_list_comma ',' expr
    { $$ = append_Expressions($1, single_Expressions($3)); }
    ;

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
