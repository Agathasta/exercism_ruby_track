# frozen_string_literal: true

class Matrix
  attr_reader :rows, :columns

  def initialize(matrix)
    @rows = matrix.lines.map { |row| row.split.map(&:to_i) }
    @columns = rows.transpose
  end

  def saddle_points
    list_coordinates
    @coords.select { |row, col| saddle_point?(row, col) }
  end

  private

  def list_coordinates
    @coords = [*0...rows.length].product([*0...columns.length])
  end

  def saddle_point?(row, col)
    rows[row][col] == rows[row].max && rows[row][col] == columns[col].min
  end
end
