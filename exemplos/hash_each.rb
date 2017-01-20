my_hash = { "a" => 100, "b" => 200 }

my_hash.each {|key, value| puts "#{key} is #{value}" }
my_hash.each_key {|key| puts key }
my_hash.each_value {|value| puts value }
