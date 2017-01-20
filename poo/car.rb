#!/usr/bin/env ruby

class Car
  def initialize
    @price = 1.00
    @components = []
  end

  def add_component(component)
    @components << component
    @price += component.price
  end

  def components_price
    
  def price
    @price
  end
end

class Alarm
  attr_accessor :price
  def initialize
    @price = 0.2
  end
end

class AirConditioning
  def price
    0.3
  end
end
