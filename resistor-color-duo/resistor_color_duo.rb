# frozen_string_literal: true

class ResistorColorDuo
  COLORS = %w[black brown red orange yellow green blue violet grey white].freeze

  def self.value(color_arr)
    10 * COLORS.index(color_arr[0]) + COLORS.index(color_arr[1])
  end
end
