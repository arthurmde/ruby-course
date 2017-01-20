#!/usr/bin/env ruby

class Fraction
  attr_accessor :denominator

  def numerator
    @numerator
  end
  def numerator= (numerator)
    @numerator = numerator
  end

  def initialize(numerator, denominator)
    @numerator = numerator
    @denominator = denominator
  end

  def to_f
    self.numerator/@denominator.to_f
  end

  def to_s
    "#{@numerator}/#{@denominator} = #{to_f}"
  end

  def * (number)
    if number.class == Fixnum
      return Fraction.new(@numerator * number, @denominator)
    elsif number.class == Fraction
      return Fraction.new(@numerator * number.numerator, @denominator * number.denominator)
    else
      nil
    end
  end
end
