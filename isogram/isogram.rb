# Determine if a word or phrase is an isogram.
class Isogram
  attr_reader :stripped_input

  def self.isogram?(input)
    new(input).isogram?
  end

  private

  def initialize(input)
    @stripped_input ||= input.downcase.scan(/\w/)
  end

  public

  def isogram?
    stripped_input.length == stripped_input.uniq.length
  end
end
