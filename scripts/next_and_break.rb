#!/usr/bin/env ruby

while true
  puts "Insert an odd number or 'q' to quit:"
  input = gets.chomp
  break if input == 'q'

  number = input.to_i
  if number.even?
    puts "Invalid input!"
    next
  end

  puts "The value of #{number}² is #{number**2}"
end

puts "Quiting..."
