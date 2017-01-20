#!/usr/bin/env ruby

numbers = []

10.times do
  temp = gets.chomp.to_i
  puts "Negative number does not make sense" unless temp.positive?
  numbers << temp
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
