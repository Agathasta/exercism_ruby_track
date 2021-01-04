# A binary search algorithm
class BinarySearch
  attr_reader :collection, :middle_index, :middle

  def initialize(sorted_array)
    @collection = sorted_array
  end

  def search_for(entry, first_index = 0, last_index = collection.length - 1)
    return nil if first_index > last_index

    assign_variables(first_index, last_index)

    if middle == entry
      middle_index
    elsif entry < middle
      search_for(entry, first_index, middle_index - 1)
    elsif entry > middle
      search_for(entry, middle_index + 1, last_index)
    end
  end

  def assign_variables(first_index, last_index)
    @middle_index = (first_index + last_index) / 2
    @middle = collection[middle_index]
  end
end
