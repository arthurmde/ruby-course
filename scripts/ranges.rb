#!/usr/bin/env ruby

puts (1..10).class
(1..10).to_a
('a'..'z').to_a

# Range as Intervals
(1..10) === 5	# =>	true
(1..10) === 15	# => false
('a'..'j') === 'z'	# => false

digits = 0..9
digits.each do |digit|
  puts digit
end
