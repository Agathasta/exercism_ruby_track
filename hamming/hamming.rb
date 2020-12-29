# frozen_string_literal: true

# Count the different nucleotides in two DNA strands
class Hamming
  def self.compute(strand_a, strand_b)
    raise ArgumentError unless strand_a.size == strand_b.size

    # Option 1:
    strand_a.each_char.with_index.reduce(0) { |counter, (a, idx)| a == strand_b.chars[idx] ? counter : counter += 1 }
    
    # Option 2:
    # strand_a.each_char.with_index.count{ |a, idx| a != strand_b[idx] }
  end
end

# Original solution:

# class Hamming
#   def self.compute(strand_a, strand_b)
#     raise ArgumentError unless strand_a.size == strand_b.size

#     strand_a.chars.zip(strand_b.chars).count { |a, b| a != b }
#   end
# end
