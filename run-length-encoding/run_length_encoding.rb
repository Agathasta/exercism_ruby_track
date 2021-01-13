# Implement run-length encoding and decoding.
class RunLengthEncoding
  def self.encode(plaintext)
    plaintext.gsub(/(.)\1+/) { |group| "#{group.length}#{group[0]}" }
  end

  def self.decode(code)
    code.gsub(/(\d+)(\D)/) { Regexp.last_match(2) * Regexp.last_match(1).to_i }
  end
end
