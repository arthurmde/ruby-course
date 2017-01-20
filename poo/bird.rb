#!/usr/bin/env ruby

class Animal
  def initialize(name, gender)
    @name = name
    @gender = gender
  end
end

class Dog < Animal
  def initialize(name, gender, breed)
    super(name, gender)
    @breed = breed
  end
end

class Dolphin < Animal
  def initialize(gender)
    @gender = gender
  end
end
