["first", "middle", "last"].each { |element| puts element.capitalize }

["first", "middle", "last"].reverse_each { |element| puts element.upcase }

["a", "b", "c"].each_with_index do |letter, index|
  puts "#{letter.upcase}: #{index}"
end
