# frozen_string_literal: true

class Complement

  def self.of_dna(dna_str)
    dna_str.tr("GCTA", "CGAU")
  end
end

#### FIRST TRY ####
=begin
class Complement
  DNA = %w[G C T A].freeze
  RNA = %w[C G A U].freeze
  def self.of_dna(str)
    str.chars.map { |l| RNA[DNA.index(l)] }.join('')
  end
end
=end
