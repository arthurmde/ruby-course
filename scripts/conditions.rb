#!/usr/bin/env ruby

presence = 0.6
score = 5.8
#grade = ""

if presence >= 0.75
  if score >= 9.0
    grade = "A"
  elsif score >= 7.0
    grade = "B"
  elsif score >= 5.0
    grade = "C"
  else
    grade = "SR"
  end
else
  grade = "SR"
end

puts grade

my_array = []
unless my_array.empty?
  puts "My array has at least one element"
end


exit unless "restaurant".include? "aura"

exit if my_array.count('a') == 5
  
