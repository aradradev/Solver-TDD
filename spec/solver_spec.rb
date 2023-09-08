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

  describe '#fizzbuzz' do
    it 'returns "Fizz" for multiple of 3' do
      expect(solver.fizzbuzz(3)).to eq('Fizz')
      expect(solver.fizzbuzz(9)).to eq('Fizz')
      expect(solver.fizzbuzz(18)).to eq('Fizz')
    end

    it 'returns "Buzz" for multiple of 5' do
      expect(solver.fizzbuzz(5)).to eq('Buzz')
      expect(solver.fizzbuzz(10)).to eq('Buzz')
    end

    it 'returns "FizzBuzz" for multiple of both 3 and 5' do
      expect(solver.fizzbuzz(15)).to eq('FizzBuzz')
      expect(solver.fizzbuzz(30)).to eq('FizzBuzz')
    end

    it 'returns the number as string for other cases' do
      expect(solver.fizzbuzz(7)).to eq('7')
      expect(solver.fizzbuzz(1)).to eq('1')
    end
  end
end
