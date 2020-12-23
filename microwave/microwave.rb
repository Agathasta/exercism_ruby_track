# frozen_string_literal: true

class Microwave
  def initialize(time)
    @time = time
    @divisor = time >= 100 ? 100 : 60
  end

  def timer
    minutes = (@time / @divisor)
    seconds = (@time % @divisor)
    # overflow
    minutes += seconds / 60
    seconds %= 60
    format('%02d:%02d', minutes, seconds)
  end
end
