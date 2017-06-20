require 'fraction/version'
require 'byebug'

class Fraction

  attr_reader :numerator, :denominator

  def initialize(numerator, denominator)
    @numerator = numerator
    @denominator = denominator
  end

  def +(other)
    if other.denominator > @denominator
      multiple = other.denominator / @denominator
      numerator = (@numerator * multiple) + other.numerator
    else
      multiple = @denominator / other.denominator
      numerator = (other.numerator * multiple) + @numerator
    end

    denominator = [@denominator, other.denominator].max

    Fraction.new(numerator, denominator)
  end
end
