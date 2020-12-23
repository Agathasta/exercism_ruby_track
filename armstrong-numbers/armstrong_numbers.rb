# frozen_string_literal: true

class ArmstrongNumbers
  def self.include?(num)
    digits = num.to_s.chars.map(&:to_i)
    num == digits.reduce(0) { |sum, d| sum += d**digits.size }
  end
end
