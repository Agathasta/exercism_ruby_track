# Operation which, given a collection and an operation to perform on each element,
# returns a new collection containing the result.
public

def accumulate(result = [])
  return to_enum(:accumulate) unless block_given?

  length.times do |i|
    result << yield(self[i])
  end
  result
end
