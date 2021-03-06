# Determine if a number is perfect, abundant, or deficient
# based on Nicomachus' classification scheme for natural numbers.
class PerfectNumber
  def self.classify(number)
    new(number).classify
  end

  attr_reader :number, :aliquot_sum

  def initialize(number)
    raise RuntimeError if number.negative?

    @number = number
    @aliquot_sum = (1...number).reduce(0) do |sum, factor|
      (number % factor).zero? ? sum + factor : sum
    end
  end

  def classify
    if number == aliquot_sum
      'perfect'
    elsif number > aliquot_sum
      'deficient'
    else
      'abundant'
    end
  end
end
