# frozen_string_literal: true

class Squares
  def initialize(num)
    @range = 1..num
  end

  def square_of_sum
    @range.reduce(:+)**2
  end

  def sum_of_squares
    @range.map { |n| n**2 }.reduce(:+)
  end

  def difference
    square_of_sum - sum_of_squares
  end
end
