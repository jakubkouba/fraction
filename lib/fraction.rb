require 'fraction/version'
require 'byebug'

class Fraction

  attr_reader :numerator, :denominator

  def initialize(numerator, denominator)
    @numerator = numerator
    @denominator = denominator
  end

  def +(other)
    Fraction.new(@numerator + other.numerator, @denominator)
  end
end
