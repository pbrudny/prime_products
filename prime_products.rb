require 'rubygems'
require 'lib/multiplication_table'
require 'lib/prime_generator'

# Display table with products of the first 10 prime numbers.
puts MultiplicationTable.new([1] + PrimeGenerator.new(10).primes).formatted

