

while true
  print "> "
  begin
    print eval gets
  rescue StandardError => e
    puts e.class.to_s + ": " + e.message, e.backtrace
  end
  print "\n"
end
