#!/usr/bin/env ruby

people = {}

while true
  puts "Nome:"
  name = gets.chomp
  puts "Idade:"
  age = gets.to_i
  people[name] = age

  puts "Deseja inserir outra pessoa [s/n]?"
  break unless gets.chomp.downcase == 's'
end

max_age = 0
older = []
people.each do |name, age|
  if age == max_age
    older << name
  elsif age > max_age
    older.clear # => []
    older << name
    max_age = age
  end
end

older.each {|name| print "#{name} - "}
print max_age
print "\n"
