#!/usr/bin/env ruby


begin
  file = File.open('array.rb', 'r')
  file.write "bar"
rescue
  puts "Exception handling"
ensure
  puts "Closing file"
  file.close unless file.nil?
end





begin
  puts 10/0
rescue ZeroDivisionError => e
  puts e.message
  puts e.backtrace.inspect
end



begin
  puts 10/0
rescue ArgumentError
  # do this
rescue RangeError
  # do that
rescue
  puts "Entrei"
  # StandardError exceptions
end
