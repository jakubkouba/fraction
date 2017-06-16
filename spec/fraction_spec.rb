require 'spec_helper'

describe Fraction do
  describe 'Adding fractions' do
    let(:n_1) {}
    let(:d_1) {}

    let(:n_2) {}
    let(:d_2) {}

    let(:fraction_one) { Fraction.new(n_1, d_1) }
    let(:fraction_two) { Fraction.new(n_2, d_2) }

    subject { fraction_one + fraction_two }

    describe '0 + 0' do
      let(:n_1) { 0 }
      let(:d_1) { 1 }

      let(:n_2) { 0 }
      let(:d_2) { 1 }

      it { is_expected.to eq 0 }
    end

    describe '1 + 0' do
      let(:n_1) { 1 }
      let(:d_1) { 0 }

      let(:n_2) { 1 }
      let(:d_2) { 0 }

      it { is_expected.to eq 1 }
    end
  end
end
