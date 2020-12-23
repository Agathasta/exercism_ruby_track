# frozen_string_literal: true

class ResistorColorTrio
  COLORS = %w[black brown red orange yellow green blue violet grey white].freeze

  def initialize(input)
    raise ArgumentError unless (input - COLORS).empty?

    first, second, exponents = input.map { |color| COLORS.index(color)}
    @resistance = (10 * first + second) * 10**exponents
  end

  def label
    unless @resistance < 1000
      @resistance /= 1000
      kilo = 'kilo'
    end
    "Resistor value: #{@resistance} #{kilo}ohms"
  end
end
