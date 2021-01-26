# frozen_string_literal: true

class ArmstrongNumbers
  def self.include?(number)
    digits = number.to_s.chars.map(&:to_i)
    number == digits.sum { |d| d**digits.size }
  end
end
