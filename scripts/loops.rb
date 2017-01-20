#!/usr/bin/env ruby

elements = []

(0..5).each do |i|
  puts "adding #{i} to the list."
  elements.push(i)
end

i = 0
numbers = []

while i < 6
  numbers.push(i)
  i += 1
end

numbers = [1, 2, 3, 4, 5, 6]

until numbers.empty?
  numbers.pop
end
puts numbers.size

letters = ['a', 'b', 'c']
for letter in letters
  puts letter
end
