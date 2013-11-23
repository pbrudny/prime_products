require 'rubygems'
require 'lib/multiplication_table'
require 'lib/prime_generator'

puts MultiplicationTable.new([1] + PrimeGenerator.new(20).primes).formatted

