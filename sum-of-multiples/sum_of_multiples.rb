# frozen_string_literal: true

class SumOfMultiples
  def initialize(*divs)
    @divs = divs
  end

  def to(max)
    (1...max).select { |num| @divs.any? { |div| (num % div).zero? } }.sum || 0
  end
end
