# frozen_string_literal: true

class Acronym
  def self.abbreviate(str)
    str.scan(/\b[a-zA-Z]/).join.upcase
  end
end
