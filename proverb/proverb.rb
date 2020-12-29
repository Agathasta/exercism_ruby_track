# frozen_string_literal: true

# Given a list of variable inputs, generate the relevant proverb.
class Proverb
  def initialize(*words, qualifier: nil)
    @words = words
    @qualifier = qualifier
  end

  def to_s
    @words.each_cons(2)
          .map { |first, second| "For want of a #{first} the #{second} was lost.\n" }
          .push("And all for the want of a #{@qualifier} #{@words[0]}.".squeeze(' '))
          .join
  end
end
