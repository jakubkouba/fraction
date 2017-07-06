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

    simplify(Fraction.new(new_numerator, new_denominator))
  end

  def -(other)
    @numerator - other.numerator
  end

  def *(other)
    new_numerator = @numerator * other.numerator
    new_denominator = @denominator * other.denominator

    simplify(Fraction.new(new_numerator, new_denominator))
  end

  private

  def simplify(fraction)
    gcm = fraction.numerator.gcd(fraction.denominator)
    return fraction if gcm == 1

    numerator   = fraction.numerator / gcm
    denominator = fraction.denominator / gcm

    Fraction.new(numerator, denominator)
  end
end
