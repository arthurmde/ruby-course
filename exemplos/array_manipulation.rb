[1,2,3] << "a" # => [1,2,3,"a"]
[1,2,3].push("a") # => [1,2,3,"a"]
[1,2,3].unshift("a") # => ["a",1,2,3]

my_array = [1,2,3]
my_array.pop # => 3
my_array # => [1,2]
my_array = ["a",1,2,3]
my_array.shift # => "a"
my_array # => [1,2,3]
my_array.insert(1, 'apple')  #=> [1, 'apple', 2, 3]

my_array = [:a, :b, :c, :b]
my_array.delete(:b) # => :b
my_array # => [:a, :c]
