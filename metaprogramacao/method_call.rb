

class A < String
  def duplicate
    self + self
  end
end

a = A.new("Hello")
a.duplicate
a.downcase
a.class
a.non_existent_method


# Send

1 + 2 # => 3
1.+(2) # => 3
1.send(:+, 2) # => 3

"HELLO WORLD".downcase
"HELLO WORLD".send(:downcase)
