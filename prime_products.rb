require 'rubygems'
require 'lib/multiplication_table'
require 'lib/prime_generator'

#
# Display table with products of the first 10 prime numbers.
# Note: [1] is used for multiplication but is not displayed because it is not a prime number.
#
puts MultiplicationTable.new([1] + PrimeGenerator.new(10).primes, :empty_first_cell => true).formatted

