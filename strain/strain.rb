public

# Implement the keep operation on collections.
def keep
  return to_enum(:keep) unless block_given?

  each_with_object([]) do |element, kept|
    kept << element if yield(element)
  end
end

# Implement the discard operation on collections.
def discard
  return to_enum(:discard) unless block_given?

  keep { |element| element unless yield(element) }
end
