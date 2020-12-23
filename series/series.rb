# frozen_string_literal: true

class Series
  def initialize(str)
    @arr = str.chars
  end

  def slices(num)
    raise ArgumentError unless num <= @arr.size

    @arr.each_cons(num).map(&:join)
  end
end
