class BinarySearch
  attr_reader :collection#, :ceiling, :floor

  def initialize(array, floor = 0, ceiling = array.length - 1)
    @collection = array
    # @floor = floor
    # @ceiling = ceiling
  end

  def search_for(entry, floor = 0, ceiling = collection.length - 1)
    @floor = floor
    @ceiling = ceiling

    return nil if @floor > @ceiling

    if collection[middle] == entry
      middle
    elsif entry > collection[middle]
      search_for(entry, floor_right, ceiling)#.search_for(entry)
    elsif entry < collection[middle]
      search_for(entry, floor, ceiling_left)#.search_for(entry)
    end
  end

  def middle
    middle = (@floor + @ceiling) / 2
  end

  def floor_right
    middle + 1
  end

  def ceiling_left
    middle - 1
  end
end
