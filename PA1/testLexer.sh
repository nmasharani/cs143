#!/bin/sh

#  testLexer.sh
#  
#
#  Created by Luke Pappas on 4/16/14.
#
rm mine
y
for file in Testfiles/*
        do
                echo $file
                ./lexer $file > mine
                /usr/class/cs143/bin/coolc -k $file
                diff ./mine ./lexer.out
                echo ""
        done
