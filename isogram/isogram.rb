# Determine if a word or phrase is an isogram.
class Isogram
  def self.isogram?(phrase)
    new(phrase).isogram?
  end

  private

  attr_reader :phrase

  def initialize(phrase)
    @phrase = phrase.downcase.scan(/\w/)
  end

  public

  def isogram?
    phrase.length == phrase.uniq.length
  end
end
