require_relative 'test_helper'
require_relative '../lib/prime_generator'

describe PrimeGenerator do
  describe 'when initialized with 1' do
    before do
      @generator = PrimeGenerator.new(1)
    end

    it 'has array in primes attribute' do
      @generator.primes.must_be_kind_of Array
    end

    it 'has one element in primes attribute' do
      @generator.primes.count.must_equal 1
    end

    it 'has proper prime in primes attribute' do
      @generator.primes.must_equal [2]
    end
  end

  describe 'when initialized with 5' do
    before do
      @generator = PrimeGenerator.new(5)
    end

    it 'has array in primes attribute' do
      @generator.primes.must_be_kind_of Array
    end

    it 'has 5 elements in primes attribute' do
      @generator.primes.count.must_equal 5
    end

    it 'has proper primes in primes attribute' do
      @generator.primes.must_equal [2, 3, 5, 7, 11]
    end
  end

  describe 'when initialized with 10' do
    before do
      @generator = PrimeGenerator.new(10)
    end

    it 'has array in primes attribute' do
      @generator.primes.must_be_kind_of Array
    end

    it 'has 10 elements in primes attribute' do
      @generator.primes.count.must_equal 10
    end

    it 'has proper primes in primes attribute' do
      @generator.primes.must_equal [2, 3, 5, 7, 11, 13, 17, 19, 23, 29]
    end
  end
end