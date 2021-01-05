# So this is at least working. Thanks to Mathologer for [this video](https://www.youtube.com/watch?v=0Oef3MHYEC0)
# I want to do this more flexible, to be usable with more buckets.
# And generally refractor it. Tomorrow...
class TwoBucket
  attr_reader :goal, :bucket_1, :bucket_2

  def initialize(size_1, size_2, goal, start)
    @bucket_1 = start == 'one' ? size_1 : size_2
    @bucket_2 = start == 'one' ? size_2 : size_1
    @liquid_1 = 0
    @liquid_2 = 0
    @goal = goal
    @start = start
  end

  def moves(counter = 0)

    until @liquid_1 == goal || @liquid_2 == goal

      if @liquid_1.zero?
        @liquid_1 = bucket_1
      elsif bucket_2 == goal
        @liquid_2 = bucket_2
      elsif @liquid_2 == bucket_2
        @liquid_2 = 0
      else
        if @liquid_1 < (bucket_2 - @liquid_2)
          @liquid_2 += @liquid_1
          @liquid_1 = 0
        else
          @liquid_1 -= (bucket_2 - @liquid_2)
          @liquid_2 = bucket_2
        end
      end

      counter += 1
    end
    
    counter
  end

  def goal_bucket
    case @start
    when 'one' then @liquid_1 == goal ? 'one' : 'two'
    when 'two' then @liquid_1 == goal ? 'two' : 'one'
    end
  end

  def other_bucket
    @liquid_1 == goal ? @liquid_2 : @liquid_1
  end
end
