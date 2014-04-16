#!/bin/sh

#  testLexer.sh
#  
#
#  Created by Luke Pappas on 4/16/14.
#
./lexer $1 > mine
/usr/class/cs143/bin/coolc -k $1
diff ./mine ./lexer.out
