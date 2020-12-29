# frozen_string_literal: true

# Determine if a word or phrase is an isogram.
class Isogram
  attr_reader :input

  def self.isogram?(input)
    new(input).isogram?
  end

  private

  def initialize(input)
    @input = input
  end

  def stripped_input
    @stripped_input ||= input.downcase.scan(/\w/)
  end

  def length_stripped_input
    stripped_input.length
  end

  def length_stripped_input_unique
    stripped_input.uniq.length
  end

  public

  def isogram?
    length_stripped_input == length_stripped_input_unique
  end
end
