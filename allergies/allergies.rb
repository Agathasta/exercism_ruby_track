# Given a person's allergy score, determine whether or not they're allergic to a given item,
# and their full list of allergies.
class Allergies
  attr_reader :score

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
  end

  def allergic_to?(food)
    list.include?(food)
  end

  def list
    ALLERGIES.map { |key, allergy| allergy unless (key & score).zero? }.compact
  end
end
