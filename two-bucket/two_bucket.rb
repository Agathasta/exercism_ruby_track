class TwoBucket
  attr_accessor :one, :two, :goal

  def initialize(size_1, size_2, goal, start)
    @size_1 = size_1
    @size_2 = size_2
    @one = start == 'one' ? size_1 : size_2
    @two = 0
    @goal = goal
  end

  def moves
    until one == goal || two == goal
    if one.zero?
      one == @size_1
    elsif two == @size_2
      two == 0
    else
      one - two
    end
  end

  end

  def goal_bucket
    # bucket that reaches the goal, 'one' or 'two'
  end

  def other_bucket
    # liters remaining in other bucket
  end
end
