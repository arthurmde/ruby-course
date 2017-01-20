#!/usr/bin/env ruby

module EnglishSpeaker
  def talk_in_english
    "Hello, my name is #{self.name} and I'm #{self.age} years old"
  end
end

class Brazilian
  include EnglishSpeaker
  # ...
end

class French
  include EnglishSpeaker
  # ...
end


brazilian = Brazilian.new("Maria", 34)
french = French.new("Henry", 45)

brazilian.talk_in_english
french.talk_in_english
