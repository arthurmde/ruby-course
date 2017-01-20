#!/usr/bin/env ruby

class Array
  def element_types
    relation = {}
    self.each do |element|
      if relation.has_key? element.class
        relation[element.class] += 1
      else
        relation[element.class] = 1
      end
    end
    relation
  end
end
