

class Animal
  def take_a_nap
    print "Sleeping..."
    sleep 3
  end
end

class Duck < Animal
  def take_a_nap
    super
    print "I'm a lazy duck!"
    sleep 2
  end
end

Duck.new.take_a_nap # => "Sleeping...I'm a lazy duck!"
Duck.class_eval do
  remove_method :take_a_nap
end
Duck.new.take_a_nap # => "Sleeping..."

Duck.class_eval do
  undef_method :take_a_nap
end
Duck.new.take_a_nap # => NoMethodError
