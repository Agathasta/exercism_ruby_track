# frozen_string_literal: true

class SpaceAge
  PLANET_YEARS = {
    mercury: 0.2408467,
    venus: 0.61519726,
    earth: 1,
    mars: 1.8808158,
    jupiter: 11.862615,
    saturn: 29.447498,
    uranus: 84.016846,
    neptune: 164.79132
  }.freeze

  def initialize(sec)
    @earth_years = sec / 31_557_600.to_f
  end

  PLANET_YEARS.each do |planet, planet_year|
    define_method(:"on_#{planet}") { @earth_years / planet_year }
  end
end

# Inspired by oliakremmyda's solution
