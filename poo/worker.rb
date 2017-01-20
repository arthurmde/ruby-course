#!/usr/bin/env ruby

class Worker
  def work
    puts 'Start working'
    design_product
    prepare_material
    build
    puts "The #{product} is ready"
  end

  protected
  def design_product
    puts "Designing a #{product}"
  end
end

class CivilEngineer < Worker
  def prepare_material
    puts "Define materials for the floor, walls and ceiling"
  end

  def build
    puts "Putting the bricks..."
  end

  def product
    "House"
  end
end

class CarEngineer < Worker
  def prepare_material
    puts "Define materials for the car"
  end

  def build
    puts "Putting the car materials"
  end

  def product
    "Car"
  end
end
