# frozen_string_literal: true

class Year
  def self.leap?(year)
    (year % 400).zero? || ((year % 4).zero? && year % 100 != 0)
  end
end
