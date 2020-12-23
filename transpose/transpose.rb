# frozen_string_literal: true

class Transpose
  def self.transpose(input)
    arr = input.split("\n")
    max_length = arr.map(&:length).max
    arr
      .map { |a| a.ljust(max_length, '!').chars }
      .transpose
      .map(&:join)
      .join("\n")
      .gsub(/!*$/, '')
      .gsub('!', ' ')
  end
end
