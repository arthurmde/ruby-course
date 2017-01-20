#!/usr/bin/env ruby

numbers = []

5.times do
  numbers << gets.chomp.to_i
end

max_number = nil

numbers.each do |number|
  if max_number.nil?
    max_number = number
  elsif number > max_number
    max_number = number
  end
end

puts "O maior número é: #{max_number}"
