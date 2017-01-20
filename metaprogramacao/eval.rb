
eval "puts 2+2"

my_variable = "Hello"
eval "my_variable + ' everyone!'" # => "Hello everyone"

class Person
end

Person.class_eval do
  def hello
    "I'm a person saying hello!"
  end
end

Person.new.hello # => hello


module MethodCreator
  def self.create_method(klass)
    klass.class_eval do
      def goodbye
        puts "goodbye"
      end
    end
  end
end

MethodCreator.create_method(Person)
Person.new.goodbye
MethodCreator.create_method(String)
"I want to say".goodbye

module MethodCreator
  def self.create_class_method(klass)
    klass.instance_eval do
      def goodbye
        puts "goodbye"
      end
    end
  end
end

MethodCreator.create_class_method(Person)
Person.goodbye
MethodCreator.create_class_method(String)
String.goodbye
