require 'fraction/version'
require 'byebug'

class Fraction

  attr_reader :numerator, :denominator

  def initialize(numerator, denominator)
    @numerator = numerator
    @denominator = denominator
  end

  def +(other)
    multiple = other.denominator / @denominator
    numerator = (@numerator * multiple) + other.numerator
    Fraction.new(numerator, other.denominator)
  end
end
