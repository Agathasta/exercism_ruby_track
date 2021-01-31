class Luhn
  def self.valid?(id_number)
    new(id_number).valid?
  end

  attr_reader :id_number

  def initialize(id_number)
    @id_number = id_number.gsub(/\s+/, '')
  end

  def valid?
    min_length? && only_digits? && valid_sum?
  end

  private

  def min_length?
    id_number.length > 1
  end

  def only_digits?
    id_number !~ /\D/
  end

  def valid_sum?
    (sum % 10).zero?
  end

  def sum
    digits = id_number.chars.map(&:to_i).reverse
    
    digits.map.with_index do |digit, index|
      index.odd? ? multiply(digit) : digit
    end.reduce(:+)
  end

  def multiply(digit)
    digit * 2 > 9 ? digit * 2 - 9 : digit * 2
  end
end
