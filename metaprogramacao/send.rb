

module EnglishSpeaker
  def say(method_name)
    self.send(method_name)
  end

  def greeting
    puts ['hello', 'good day', "what's up", 'yo', 'hi', 'hey'].sample
  end

  def farewell
    puts ['goodbye', 'see you later', 'bye for now'].sample
  end

  def something_nice
    puts ['you look nice', 'i like your shirt'].sample
  end
end

class Person
end

person = Person.new
person.extend EnglishSpeaker
person.say(:greeting)
person.say(:something_nice)
person.say(:farewell)


module DifferentSpeaker
  def say(method_name, method_parameters = [])
    self.send(method_name, *method_parameters)
  end

  def nothing
    puts "nothing"
  end

  def name(name)
    puts "I love this name: #{name}"
  end

  def name_and_age(name, age)
    puts "This is #{name}, he/she is #{age}"
  end
end

man = Person.new
man.extend DifferentSpeaker
man.say(:nothing)
man.say(:name, ["Arthur"])
man.say(:name_and_age, ["Arthur", 24])
