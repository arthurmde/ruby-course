#!/usr/bin/env ruby

numbers = [1, 2, 3, 4, 5, 6]

until numbers.empty?
  numbers.pop
  puts "Size: #{numbers}"
end

puts "Final size #{numbers.size}"

puts "="*100, "While:"

numbers = [1, 2, 3, 4, 5, 6]

while !numbers.empty?
  numbers.pop
  puts "Size: #{numbers}"
end

puts "Final size #{numbers.size}"
