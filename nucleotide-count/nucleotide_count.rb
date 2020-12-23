# frozen_string_literal: true

# Compute how many times each nucleotide occurs in a DNA string.
class Nucleotide
  def self.from_dna(dna)
    raise ArgumentError if /[^ATCG]/.match(dna)

    @dna = dna
    self
  end

  def self.count(nucl)
    @dna.count(nucl)
  end

  def self.histogram
    @dna.chars.each_with_object({ 'A' => 0, 'T' => 0, 'C' => 0, 'G' => 0 }) { |nucl, counter| counter[nucl] += 1 }
  end
end
