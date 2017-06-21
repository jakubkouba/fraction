require 'fraction/version'
require 'byebug'

class Fraction

  attr_reader :numerator, :denominator

  def initialize(numerator, denominator)
    @numerator = numerator
    @denominator = denominator
  end

  def +(other)
    numerator = new_numerator(other)
    denominator = [@denominator, other.denominator].max

    Fraction.new(numerator, denominator)
  end

  private

  def new_numerator(other)
    if @denominator > other.denominator
      multiple  = @denominator / other.denominator
      numerator = (other.numerator * multiple) + @numerator
    else
      multiple  = other.denominator / @denominator
      numerator = (@numerator * multiple) + other.numerator
    end
    numerator
  end
end
