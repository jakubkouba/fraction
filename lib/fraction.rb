require 'fraction/version'
require 'byebug'

class Fraction

  attr_reader :numerator, :denominator

  def initialize(numerator, denominator)
    @numerator = numerator
    @denominator = denominator
  end

  def +(other)
    lcm = denominator.lcm(other.denominator)
    new_numerator = ((lcm / denominator) * numerator) + ((lcm / other.denominator) * other.numerator)

    Fraction.new(new_numerator, lcm)
  end
end
