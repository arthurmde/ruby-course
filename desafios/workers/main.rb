#!/usr/bin/env ruby

# require_relative 'robot'
# require_relative 'human'

class Droid
  attr_accessor :name
  def initialize(name)
    @name = name
    @energy = 10
  end
  def work
    @energy -= 1
  end
end

class Human
  attr_accessor :name
  def initialize(name)
    @name = name
    @stamina = 25
  end
  def work
    @stamina -= 3
  end
end

class Dog
  attr_accessor :name
  def initialize(name)
    @name = name
    @stamina = 5
  end
  def bark
    puts "Auuuuuuuuuuhh!"
  end
end

def woodcutting(worker)
  unless worker.respond_to? :work
    puts "This is not a worker!"
    return nil
  end
  worker.work
  puts "#{worker.name}'s job is done!"
end

droid = Droid.new('Aida')
woodcutting(droid) # => Aida's job is done
human = Human.new('Steve')
woodcutting(human) # => Steve's job is done
dog = Dog.new('Marley')
woodcutting(dog) # => "This is not a worker!"
