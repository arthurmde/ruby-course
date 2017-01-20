#!/usr/bin/env ruby

# require_relative 'robot'
# require_relative 'human'

module Programmer
  def programming_languages
    if @programming_languages.nil?
      @programming_languages = []
    else
      @programming_languages
    end
  end

  def learn_to_program(language)
    self.programming_languages << language
  end

  def program(language)
    if self.programming_languages.include? language
      puts "Programming in #{language}"
    else
      puts "I don't know how to program in #{language}"
    end
  end
end

module Learner
  def become_a(profession)
    if profession == :programmer
      self.extend Programmer
    elsif profession == :designer
      self.extend Designer
    else
      raise "Cannot become a #{profession}"
    end
  end
end

module Learner
  def become_a(profession)
    begin
      module_constant = Kernel.const_get(profession.to_s.capitalize)
      self.extend module_constant
    rescue NameError => e
      raise NameError.new("Cannot become a #{profession}: " + e.message)
    end
  end
end



class Person
  include Learner
  attr_accessor :name
  def initialize(name)
    @name = name
  end
end

person = Person.new('Joao')
person.respond_to? :program # => false
person.become_a(:programmer)
person.respond_to? :program # => true
person.programming_languages # => []
person.program :ruby # => "I don't know how to program in ruby"
person.learn_to_program(:ruby)
person.program :ruby # => "Programming in ruby"
person.programming_languages # => [:ruby]
