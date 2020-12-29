# Return the largest and smallest palindromes, along with the factors of each,
# within a given range.
class Palindromes
  SelectedPalindrome = Struct.new(:value, :factors)

  attr_reader :palindrome_list

  def initialize(max_factor:, min_factor: 1)
    @range = (min_factor..max_factor).to_a
    @palindrome_list = Hash.new { |list, product| list[product] = [] } # { product => [*factors] }
  end

  private

  def all_factors
    @range.repeated_combination(2) #<Enumerator: ...>
  end

  def product(factors)
    factors.reduce(:*)
  end

  def palindrome?(product)
    product.to_s == product.to_s.reverse
  end

  public 

  def generate
    all_factors.each do |factors|
      palindrome_list[product(factors)] << factors if palindrome?(product(factors))
    end
  end

  def largest
    SelectedPalindrome.new(*palindrome_list.max)
  end

  def smallest
    SelectedPalindrome.new(*palindrome_list.min)
  end
end
