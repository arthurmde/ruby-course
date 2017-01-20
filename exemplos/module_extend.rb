

module ActLikeADuck
  def quack
    puts "quack"
  end
end

class Duck
  include ActLikeADuck
end

class Person
end

normal_person = Person.new
costumed_person = Person.new
costumed_person.extend ActLikeADuck
costumed_person.quack # => "quack"
normal_person.quack # => NoMethodError

class Person
  extend ActLikeADuck
end

Person.extend ActLikeADuck

Person.quack
