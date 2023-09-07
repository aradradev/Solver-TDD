require 'spec_helper'
require_relative '../solver'

RSpec.describe Solver do
  let(:solver) { Solver.new }

  describe '#factorial' do
    it 'returns 1 for factorial(0)' do
      expect(solver.factorial(0)).to eq(1)
    end

    it 'returns the correct number with positive integers' do
      expect(solver.factorial(5)).to eq(120)
      expect(solver.factorial(10)).to eq(3_628_800)
    end

    it 'will raise an error with a negative number' do
      expect do
        solver.factorial(-1)
      end.to raise_error(ArgumentError, 'Factorial with negative number is not defined')
    end
  end

  describe '#reverse' do
    it 'returns a reversed string' do
        expect(solver.reverse('hello')).to eq('olleh')
        expect(solver.reverse('world')).to eq('dlrow')
    end

    it 'returns empty string' do
        expect(solver.reverse('')).to eq('')
    end
  end
end
