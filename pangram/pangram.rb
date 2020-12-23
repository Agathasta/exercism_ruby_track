# frozen_string_literal: true

class Pangram
  def self.pangram?(sentence)
    ('a'..'z').each { |c| return false unless sentence.downcase.chars.include?(c) }
  end
end