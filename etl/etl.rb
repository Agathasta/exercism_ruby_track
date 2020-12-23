# frozen_string_literal: true

# Transform the storing system of scrabble scores from a legacy system.
class ETL
  def self.transform(old)
    old.each_with_object({}) do |(key, value), hash|
      value.each { |v| hash[v.downcase] = key }
    end
  end
end
