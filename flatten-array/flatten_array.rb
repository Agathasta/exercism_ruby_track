# frozen_string_literal: true

class FlattenArray
  def self.flatten(nested_list)
    nested_list.flatten.reject(&:nil?)
  end
end
