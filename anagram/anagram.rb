# frozen_string_literal: true

class Anagram
  attr_reader :to_match

  def initialize(to_match)
    @to_match = to_match
  end

  def match(list)
    list.select { |word| word.downcase != to_match.downcase && chars(word) == chars(to_match) }
  end

  def chars(words)
    words.downcase.chars.sort
  end
end
