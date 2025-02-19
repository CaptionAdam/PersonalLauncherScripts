#!/bin/bash

shopt -s expand_aliases
alias goto="cat >/dev/null <<"

goto GOTO_1

echo "Don't run this"

GOTO_1

echo "Run this"

goto GOTO_2

echo "Don't run this either"

GOTO_2

echo "All done"
