require 'spec_helper'

describe Fraction do
  describe 'Adding fractions' do
    describe '0 + 0' do
      it 'equals 0' do
        sum = Fraction.new(0, 1) + Fraction.new(0, 1)

        expect(sum.numerator).to eq 0
      end
    end

    describe '1 + 0' do
      it 'equals 1' do
        sum = Fraction.new(1, 1) + Fraction.new(0, 1)

        expect(sum.numerator).to eq 1
      end
    end

    describe '0 + 1' do
      it 'equals 1' do
        sum = Fraction.new(0, 1) + Fraction.new(1, 1)

        expect(sum.numerator).to eq 1
      end
    end

    describe '1 + 1' do
      it 'equals 2' do
        sum = Fraction.new(1, 1) + Fraction.new(1, 1)

        expect(sum.numerator).to eq 2
      end
    end

    describe '1/3 + 1/3' do
      it 'equals 2/3' do
        sum = Fraction.new(1,3) + Fraction.new(1, 3)

        expect(sum.numerator).to eq 2
        expect(sum.denominator).to eq 3
      end

    end
  end
end
