# frozen_string_literal: true

class Triangle
  def initialize(arr)
    @sides = arr
  end

  def triangle?
    @sides.all?(&:positive?) && @sides.sort[0] + @sides.sort[1] > @sides.max
  end

  def equilateral?
    triangle? && @sides.uniq.count == 1
  end

  def isosceles?
    triangle? && @sides.uniq.count <= 2
  end

  def scalene?
    triangle? && @sides.uniq.count == 3
  end
end
