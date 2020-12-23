# frozen_string_literal: true

class Darts
  def initialize(x, y)
    @squared = (x**2) + (y**2)
  end

  def score
    case @squared.ceil
    when 26..100 then 1
    when 2..25 then 5
    when 0..1 then 10
    else 0
    end
  end
end
