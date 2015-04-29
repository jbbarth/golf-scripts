#!/usr/bin/env ruby

res = %x(cat input.txt | perl script.pl)
size = File.read("script.pl").chomp.length
if res.strip == File.read("output.txt").strip
  puts "ok! #{size}"
  exit 0
else
  puts "KO! #{size}"
  exit 1
end
