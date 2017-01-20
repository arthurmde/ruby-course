#!/usr/bin/env ruby

begin
  print "1 "
  10/0
  print "2 "
rescue
  print "3 "
rescue ZeroDivisionError
  print "4 "
rescue StandardError
  print "5 "
ensure
  print "6 "
end
print "\n"
