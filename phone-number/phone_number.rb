# frozen_string_literal: true

class PhoneNumber
  def self.clean(str)
    str = str.scan(/\d/).join
    /\A1*[2-9]\d{2}[2-9]\d{6}\b/.match(str) ? str[-10..-1] : nil
  end
end
