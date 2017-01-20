#!/usr/bin/env ruby

even_numbers = []

5.times do
  value = gets.chomp.to_i
  even_numbers << value unless value.odd?
end

puts "Os números pares são: #{even_numbers}"
