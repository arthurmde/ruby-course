#!/usr/bin/env ruby

puts "\n\nLoop with Range:"

(0..20).each do |i|
  next if i % 2 == 1
  print "#{i}, "
end

puts "\n\nLoop with for:"

for i in (0..20)
  puts "#{i}, " if i.even?
end

puts "\n\nLoop with until:"

i = 0
until i > 20
  print "#{i}, " unless i.odd?
  i += 1
end

puts "\n\nLoop with While:"

i = 0
while true
  break if i >= 20
  print "#{i}, " if !i.odd?
  i += 1
end

puts "\n"
