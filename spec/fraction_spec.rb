require 'spec_helper'

describe Fraction do
  let(:fraction) { '1/4' }
  let(:fraction_instance) { described_class.new(fraction) }

  it 'has a version number' do
    expect(Fraction::VERSION).not_to be nil
  end

  context 'with valid initialization value' do

    it 'parses fraction for numerator and denominator' do
      expect( fraction_instance.numerator ).to eq 1
      expect( fraction_instance.denominator ).to eq 4
    end
  end

  context 'with invalid initialization value' do
    let(:fraction) { 'blah' }

    it 'raise an InvalidFractionError' do
      expect{ fraction_instance }.to raise_error(InvalidFractionError)
    end
  end

  describe '#add' do
    {
        '1/2' => '1/6',
        '1/4' => '1/2'
    }.each do |adder, result|
      subject { fraction_instance.add(adder) }

      it { is_expected.to eq result }
    end
  end
end
