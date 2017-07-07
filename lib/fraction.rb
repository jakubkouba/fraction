require 'fraction/version'
require 'byebug'

class Fraction

  attr_reader :numerator, :denominator

  def initialize(numerator, denominator)
    gcm = numerator.gcd(denominator)

    @numerator   = numerator / gcm
    @denominator = denominator / gcm
  end

  def +(other)
    new_denominator = denominator.lcm(other.denominator)
    new_numerator   = ((new_denominator / denominator) * numerator) + ((new_denominator / other.denominator) * other.numerator)

    Fraction.new(new_numerator, new_denominator)
  end

  def -(other)
    @numerator - other.numerator
  end

  def *(other)
    new_numerator = @numerator * other.numerator
    new_denominator = @denominator * other.denominator

    Fraction.new(new_numerator, new_denominator)
  end
end
