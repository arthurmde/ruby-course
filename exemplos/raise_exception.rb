#!/usr/bin/env ruby

class Fraction
  def initialize(numerator, denominator)
    raise 'Denominator cannot be zero' if denominator == 0
    @numerator = numerator
    @denominator = denominator
  end
end

module MySoftware
  class InvalidDenominatorError < StandardError
  end
end


class Fraction
  def initialize(numerator, denominator)
    if denominator == 0
      raise MySoftware::InvalidDenominatorError.new 'Denominator cannot be zero'
    end

    
    @numerator = numerator
    @denominator = denominator
  end
end
