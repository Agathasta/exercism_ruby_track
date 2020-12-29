# Convert a number (integer or float) to a string.
# Its contents will depend on the factors of the number.
# (factors must be integers)
class Raindrops
  RULES = {
    3 => 'Pling',
    5 => 'Plang',
    7 => 'Plong'
  }

  def self.convert(number)
    new(number).to_s
  end

  private

  attr_reader :number, :rules

  def initialize(number, rules = RULES)
    @number = number
    @rules = rules
  end

  def sound
    @sound ||= rules.each_with_object('') do |(factor, note), sound|
      sound << note if factor?(factor)
    end
  end

  def factor?(factor)
    (number % factor).zero?
  end

  def silent?
    sound.empty?
  end

  def splash
    silent? ? number : sound
  end

  def coerce(other)
    splash.is_a?(Float) ? [splash.to_f, other] : [splash.to_i, other]
  end

  public

  def to_s
    splash.to_s
  end
end

if $PROGRAM_NAME == __FILE__
  fizzbuzz = {
    3 => 'Fizz',
    5 => 'Buzz'
  }

  -15.upto(15) do |drip|
    puts Raindrops.new(drip, fizzbuzz)
  end

  puts (1..100).sum(0) { |drip|
    Raindrops.new(drip)
  }

  puts [1.1, 2, 3.7, 5.25].sum(0) { |drip|
    Raindrops.new(drip, fizzbuzz)
  }
end
