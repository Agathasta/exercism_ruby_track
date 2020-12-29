# Given a number n, determine what the nth prime is.
class Prime
  def self.nth(nth)
    raise ArgumentError if nth.zero?

    prime_counter(nth)
  end

  def self.prime_counter(nth)
    candidate = 2
    counter = 0
    loop do
      counter += 1 if prime?(candidate)
      return candidate if counter == nth

      candidate += 1
    end
  end

  def self.prime?(candidate)
    return true if candidate == 2

    (2..Math.sqrt(candidate).ceil).each do |dividor|
      return false if (candidate % dividor).zero?
    end
    true
  end
end
