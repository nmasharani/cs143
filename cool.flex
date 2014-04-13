/*
 *  The scanner definition for COOL.
 */

/*
 *  Stuff enclosed in %{ %} in the first section is copied verbatim to the
 *  output, so headers and global definitions are placed here to be visible
 * to the code in the file.  Don't remove anything that was here initially
 */
%{
#include <cool-parse.h>
#include <stringtab.h>
#include <utilities.h>

/* The compiler assumes these identifiers. */
#define yylval cool_yylval
#define yylex  cool_yylex

/* Max size of string constants */
#define MAX_STR_CONST 1025
#define YY_NO_UNPUT   /* keep g++ happy */

extern FILE *fin; /* we read from this file */

/* define YY_INPUT so we read from the FILE fin:
 * This change makes it possible to use this scanner in
 * the Cool compiler.
 */
#undef YY_INPUT
#define YY_INPUT(buf,result,max_size) \
	if ( (result = fread( (char*)buf, sizeof(char), max_size, fin)) < 0) \
		YY_FATAL_ERROR( "read() in flex scanner failed");

char string_buf[MAX_STR_CONST]; /* to assemble string constants */
char *string_buf_ptr;

extern int curr_lineno;
extern int verbose_flag;

extern YYSTYPE cool_yylval;

/*
 * *********************************************************
 * Add Your own definitions here
 * *********************************************************
 */


%}

/*
 * *********************************************************
 * Define names for regular expressions here.
 * *********************************************************
 */

DARROW               =>
ASSIGN               <-
INLINE_COMMENT       "-""-"[^\n]*
OPEN_NESTED_COMMENT  \(\*
CLOSE_NESTED_COMMENT \*\)
WHITESPACE          [ \t\r\f\v]*
NEWLINE             \n
DIGIT              [0-9]
CAPITAL_LETTER     [A-Z]
LOWERCASE_LETTER   [a-z]




/*
 * *********************************************************
 * Define names for start conditions here. 
 * *********************************************************
 */

%x IN_NESTED_COMMENT

%%

    /* tracks the number of outstanding open comments */
    int openCommentCount = 0; 

    /* Rule 1: Remove any whitespace that is not within a comment */
{WHITESPACE} {;}

    /* Rule 2: anytime we see a newline character, update linenumber. */
<*>{NEWLINE} {
    curr_lineno++;
}
    
    /* Rule 3: Remove inline comments */
    /* When in an inline comment, we want to remove everything except new line and EOF */
{INLINE_COMMENT}   {;}


   /* Rule 4: Process open nested comment tag */
{OPEN_NESTED_COMMENT} {
    BEGIN(IN_NESTED_COMMENT);
    openCommentCount++;
}
    
    /* Rule 4A: handles the case of a nested open tag */
<IN_NESTED_COMMENT>{OPEN_NESTED_COMMENT} {
    openCommentCount++;
}

    /* Rule 5: Remove all characters within the comment except newline, EOF, (* and *) */
<IN_NESTED_COMMENT>[^\n"(""*"")"]* {;}

    /* Rule 5A: If we see an isolated ( or *  or ) in a comment, remove it */
<IN_NESTED_COMMENT>"(" {;}
<IN_NESTED_COMMENT>")" {;}
<IN_NESTED_COMMENT>"*" {;}

    /* Rule 6: Process closed tag after an open tag has occurred. */
<IN_NESTED_COMMENT>{CLOSE_NESTED_COMMENT} {
    openCommentCount--;
    if (openCommentCount == 0) BEGIN(INITIAL);
}

    /* Rule 7: A close nested comment tag without an open previous to it is an error */
{CLOSE_NESTED_COMMENT} {
    cool_yylval.error_msg = "Unmatched *)";
    return ERROR;
}

    /* Rule 8: EOF within a nested comment is an error */
<IN_NESTED_COMMENT><<EOF>> {
    cool_yylval.error_msg = "EOF in comment";
    BEGIN(INITIAL);
    return ERROR;
}

    /* Rule 9: Process integers that are not within comments or strings */
{DIGIT}+ {
    cool_yylval.symbol = inttable.add_string(yytext);
    return INT_CONST;
}

    /* Rule 10: Process Type Identifiers */
{CAPITAL_LETTER}[A-Za-z0-9_]* {
    cool_yylval.symbol = idtable.add_string(yytext);
    return TYPEID;
}

    /* Rule 11: Process Object Identifiers */
{LOWERCASE_LETTER}[A-Za-z0-9_]* {
    cool_yylval.symbol = idtable.add_string(yytext);
    return OBJECTID;
}

    /* Rule 12: The single character operators operators */
"+" {return '+';}
"/" {return '/';}
"-" {return '-';}
"*" {return '*';}
"=" {return '=';}
"<" {return '<';}
"." {return '.';}
"~" {return '~';}
"," {return ',';}
";" {return ';';}
":" {return ':';}
"(" {return '(';}
")" {return ')';}
"@" {return '@';}
"{" {return '{';}
"}" {return '}';}


    /* Rule 13: The multiple-character operators. */
{DARROW}		{ return (DARROW); }
{ASSIGN}        { return (ASSIGN); }

    /* Rule 14: Error handling. Character cannot begin anything above */
    /* This should be at bottom of list, only invoked at last resort */
    /* Note, the '.' represents any character but newline, which is what we want */
. {
    cool_yylval.error_msg = yytext;
    return ERROR;
}

 /*
  * Keywords are case-insensitive except for the values true and false,
  * which must begin with a lower-case letter.
  */


 /*
  *  String constants (C syntax)
  *  Escape sequence \c is accepted for all characters c. Except for 
  *  \n \t \b \f, the result is c.
  *
  */


%%
