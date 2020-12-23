# frozen_string_literal: true

# Find the 'Hamming distance' by comparing two DNA strands 
class Hamming
  def self.compute(strand_a, strand_b)
    raise ArgumentError unless strand_a.size == strand_b.size

    {strand_a.chars, strand_b.chars}.reduce(0) { |counter, [char_a, char_b]| counter += 1 if char_a == char_b }
    counter
  end
end


# class Hamming
#   def self.compute(strand_a, strand_b)
#     raise ArgumentError unless strand_a.size == strand_b.size

#     strand_a.chars.zip(strand_b.chars).count { |a, b| a != b }
#   end
# end