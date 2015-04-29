#!/bin/bash
vim script.rb
if ./test_rb.rb; then
  \rm script.rb-1*; cp script.rb script.rb-$(date +%s)
else
  #diff output.txt <( cat input.txt|ruby script.rb ) | tail -n 20
  diff -b output.txt <(cat input.txt|ruby script.rb)
fi
