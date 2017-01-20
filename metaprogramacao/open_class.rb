


class Numeric
  def euros
    self * 3.40
  end
  def dollars
    self * 3.14
  end
end

puts "2 reais equals #{2.euros} euros"
puts "2 reais equals #{2.dollars} dollars"
