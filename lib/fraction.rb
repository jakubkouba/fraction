require 'fraction/version'
require 'byebug'

class Fraction
  attr_reader :numerator, :denominator

  def initialize(fraction)
    @fraction = fraction
    parse(@fraction)
  end

  def add(fraction)
    fraction = Fraction.new(fraction)
  end

  private

  def parse(fraction)
    raise InvalidFractionError unless fraction =~ /\d\/\d/

    fraction_items = fraction.split('/')
    @numerator = fraction_items[0].to_i
    @denominator = fraction_items[1].to_i
  end
end

class InvalidFractionError < StandardError
end
