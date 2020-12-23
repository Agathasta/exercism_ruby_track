# frozen_string_literal: true

class Triplet
  attr_reader :sides

  def initialize(a, b, c)
    @sides = [a, b, c]
  end

  def sum
    sides.reduce(:+)
  end

  def product
    sides.reduce(:*)
  end

  def pythagorean?
    sides[0]**2 + sides[1]**2 == sides[2]**2
  end

  def self.where(max_factor:, min_factor: 1, sum: nil)
    min_factor.upto(max_factor).each_with_object([]) do |a, triplets|
      (a + 1).upto(max_factor).each do |b|
        if sum.nil?
          (b + 1).upto(max_factor).each do |c|
            triplet = new(a, b, c) 
            triplets << triplet if triplet.pythagorean?
          end
        else
          c = sum - a - b
          triplet = new(a, b, c) 
          triplets << triplet if valid?(triplet, sum)
        end
      end
    end
  end

  def self.valid?(triplet, sum)
    triplet.pythagorean? && (sum.nil? || triplet.sum == sum)
  end
end
