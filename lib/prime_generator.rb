class PrimeGenerator
  attr_reader :primes

  def initialize(number_of_primes)
    @primes = calculate(number_of_primes)
  end

  private

  #
  # Calculates given number of primes using Eratosthenes sieve
  # It is possible that sieve returns more primes than requested
  # in that case it gets trimmed.
  #
  def calculate(number)
    sieve_limit = upper_limit_for(number)
    primes = sieve_upto sieve_limit
    primes[0..number-1]
  end

  #
  # Returns limit required by Eratosthenes sieve to get given number of primes.
  # NOTE: The prime number theorem says that the number of primes less than n is asymptotically equal to n/log(n).
  #
  def upper_limit_for(desired_prime_number)
    i = 2
    while (i / Math.log(i)) < desired_prime_number do
      i = i + 1
    end
    return i
  end

  #
  # Eratosthenes sieve implementation.
  # Copied from www.scriptol.org
  #
  def sieve_upto(top)
    sieve = []
    for i in 2 .. top
      sieve[i] = i
    end
    for i in 2 .. Math.sqrt(top)
      next unless sieve[i]
      (i*i).step(top, i) do |j|
        sieve[j] = nil
      end
    end
    sieve.compact
  end
end