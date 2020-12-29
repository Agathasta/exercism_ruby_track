# frozen_string_literal: true

# Calculate the number of steps to reach 1 in the Collatz Conjecture from a starting integer
class CollatzConjecture
  def self.steps(integer, steps = 0)
    raise ArgumentError if integer <= 0
    return steps if integer == 1

    steps(integer.odd? ? (integer * 3 + 1) : (integer / 2), steps + 1)
  end
end
