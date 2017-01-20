

class Worker
  def work
    raise NotImplementedError.new("#{self.class.name}#work is an abstract method.")
  end
end

class SoftwareEngineer < Worker
end


class A
  def x_public_method (a)
    a.x_private_method
  end

  private

  def x_private_method
    puts "a"
  end
end

a1 = A.new
a2 = A.new
a1.x_private_method
a1.x_public_method(a2)
