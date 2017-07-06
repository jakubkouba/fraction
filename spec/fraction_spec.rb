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
        sum = Fraction.new(1, 3) + Fraction.new(1, 3)

        expect(sum.numerator).to eq 2
        expect(sum.denominator).to eq 3
      end
    end

    describe '1/5 + 2/5' do
      it 'equals 3/5' do
        sum = Fraction.new(1, 5) + Fraction.new(2, 5)

        expect(sum.numerator).to eq 3
        expect(sum.denominator).to eq 5
      end
    end

    describe '1/2 + 1/12' do
      it 'equals 7/12' do
        sum = Fraction.new(1, 2) + Fraction.new(1, 12)

        expect(sum.numerator).to eq 7
        expect(sum.denominator).to eq 12
      end
    end

    describe '1/4 + 1/2' do
      it 'equals 3/4' do
        sum = Fraction.new(1, 4) + Fraction.new(1, 2)

        expect(sum.numerator).to eq 3
        expect(sum.denominator).to eq 4
      end
    end

    describe '1/4 + 1/5' do
      it 'equals 9/20' do
        sum = Fraction.new(1, 4) + Fraction.new(1, 5)

        expect(sum.numerator).to eq 9
        expect(sum.denominator).to eq 20
      end
    end

    describe '1/2 + 1/2' do
      it 'equals 1/1' do
        sum = Fraction.new(1, 2) + Fraction.new(1, 2)

        expect(sum.numerator).to eq 1
        expect(sum.denominator).to eq 1
      end
    end

    describe '1/4 + 1/4' do
      it 'equals 1/2' do
        sum = Fraction.new(1, 4) + Fraction.new(1, 4)

        expect(sum.numerator).to eq 1
        expect(sum.denominator).to eq 2
      end
    end
  end

  describe 'Subtracting' do

    describe '1 - 0' do
      it 'equals 1' do
        sum = Fraction.new(1, 1) - Fraction.new(0, 1)

        expect(sum.numerator).to eq 1
        expect(sum.denominator).to eq 1
      end
    end

    describe '0 - 1' do
      it 'equals - 1' do
        sum = Fraction.new(0, 1) - Fraction.new(1, 1)

        expect(sum.numerator).to eq -1
        expect(sum.denominator).to eq 1
      end
    end
  end
end
