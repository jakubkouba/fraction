require 'fraction/version'
require 'byebug'

class Fraction

  attr_reader :numerator

  def initialize(numerator, denominator)
    @numerator = numerator
  end

  def +(other)
    @numerator + other.numerator
  end
end
