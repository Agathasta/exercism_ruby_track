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

  public

  def isogram?
    stripped_input.length == stripped_input.uniq.length
  end
end
