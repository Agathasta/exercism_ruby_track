# frozen_string_literal: true

class Phrase
  def initialize(str)
    @str = str.downcase
  end

  def word_count
    @str.scan(/\b[\w']+\b/).each.with_object(Hash.new(0)) { |w, counter| counter[w] += 1 }
    # @str.scan(/\b[\w']+\b/).tally
  end
end
