#!/bin/bash
vim script.pl
if ./test_pl.rb; then
  \rm script.pl-1*; cp script.pl script.pl-$(date +%s)
else
  diff output.txt <( cat input.txt|perl script.pl ) | tail -n 20
fi
