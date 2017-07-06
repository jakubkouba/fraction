require 'fraction/version'
require 'byebug'

class Fraction

  attr_reader :numerator, :denominator

  def initialize(numerator, denominator)
    @numerator   = numerator
    @denominator = denominator
  end

  def +(other)
    new_denominator = denominator.lcm(other.denominator)
    new_numerator   = ((new_denominator / denominator) * numerator) + ((new_denominator / other.denominator) * other.numerator)

    gcm = new_numerator.gcd(new_denominator)
    if gcm > 1
      new_numerator   /= gcm
      new_denominator /= gcm
    end

    Fraction.new(new_numerator, new_denominator)
  end

  def -(other)
    @numerator - other.numerator
  end
end
