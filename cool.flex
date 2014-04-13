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
INLINE_COMMENT       --[^(\n<<EOF>>)]*
OPEN_NESTED_COMMENT  "(""*"
CLOSE_NESTED_COMMENT "*"")"
WHITESPACE          [ \t]*
NEWLINE             \n




/*
 * *********************************************************
 * Define names for start conditions here. 
 * *********************************************************
 */
 
%x NESTED_COMMENT

%%

    /* tracks the number of outstanding open comments */
    int openCommentCount = 0; 


    
    /* Rule 1: Remove inline comments */
{INLINE_COMMENT}   {;}



    /* Rule 2: Remove whitespace */
<*>{WHITESPACE}    {;}



    /* Rule 3: Remove newline character and update numLines */
<*>{NEWLINE} {
        
        curr_lineno++;
}



    /* Rule 2: Process open nested comment tag */
<*>{OPEN_NESTED_COMMENT} {

        BEGIN(NESTED_COMMENT);
        openCommentCount++;
}
 
                    
                                                          
    /* Rule 3: Process closed nested comment tag */
<NESTED_COMMENT>{CLOSE_NESTED_COMMENT} {

        openCommentCount--;
        if (openCommentCount == 0) BEGIN(INITIAL);
}



    /* Rule 4: Remove characters that are not newline from within nested comment */
<NESTED_COMMENT>[^({NEWLINE}<<EOF>>)] {;}



    /* Rule 5: EOF within a nested comment is an error */
<NESTED_COMMENT><<EOF>> {
        
        cool_yylval.error_msg = "EOF in comment";
        BEGIN(INITIAL);
        return ERROR;
}



    /* Rule 5: A close nested comment before an open nested comment tag is an error */
{CLOSE_NESTED_COMMENT}      {
                cool_yylval.error_msg = "Unmatched *)";
                return ERROR;
}


 /*
  *  The multiple-character operators.
  */
{DARROW}		{ return (DARROW); }

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
