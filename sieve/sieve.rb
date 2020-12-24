# frozen_string_literal: true

# Find prime numbers between 0 and limit using the Sieve of Eratosthenes
class Sieve
  attr_reader :limit

  def initialize(limit)
    @limit = limit
  end

  def primes
    primes = (0..limit).to_a
    primes[0] = nil
    primes[1] = nil
    primes.each do |i|
      next unless i
      break if i**2 > limit

      (i**2).step(limit, i) { |s| primes[s] = nil }
    end
    primes.compact
  end
end
