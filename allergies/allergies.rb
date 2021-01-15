class Allergies
  attr_reader :score, :allergies

  ALLERGIES = {
    1 => 'eggs',
    2 => 'peanuts',
    4 => 'shellfish',
    8 => 'strawberries',
    16 => 'tomatoes',
    32 => 'chocolate',
    64 => 'pollen',
    128 => 'cats'
  }

  def initialize(score)
    @score = score
    (1..score).each_with_object(powers = []) do |number, powers|
      powers << number if (number & (number - 1)).zero? && ALLERGIES.keys.include?(number)
    end
    @allergies = []
    for i in 1..(powers.length) do
      powers.combination(i).each do |combination|
        combination.reduce(:+) == score ? allergies.push(combination) : next
      end
    end
  end

  def allergic_to?(food)
    allergies.flatten.include?(ALLERGIES.key(food))
  end
end

# allergies = Allergies.new(9)
# p allergies.allergic_to?('eggs')
# p allergies.allergic_to?('peanuts')
# p allergies.allergic_to?('shellfish')
# p allergies.allergic_to?('strawberries')
