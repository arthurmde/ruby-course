
module Reflection
  def class_tree
    x = self.class
    while x
      puts x
      x = x.superclass
    end
  end
end
