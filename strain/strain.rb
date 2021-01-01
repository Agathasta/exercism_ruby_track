public

# Implement the keepoperation on collections.
def keep(kept = [])
  length.times do |i|
    kept << self[i] if yield(self[i])
  end
  kept
end

# Implement the discard operation on collections.
def discard(discarded = [])
  length.times do |i|
    discarded << self[i] unless yield(self[i])
  end
  discarded
end
