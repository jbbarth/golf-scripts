#!/usr/bin/env ruby

res = %x(cat input.txt | ruby script.rb)
size = File.read("script.rb").chomp.length
if res.strip == File.read("output.txt").strip
  puts "ok! #{size}"
  exit 0
else
  puts "KO! #{size}"
  exit 1
end
