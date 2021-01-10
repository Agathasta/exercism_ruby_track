# Implement run-length encoding and decoding.
class RunLengthEncoding
  def self.encode(text)#, counter = 1, code = [])
    text.gsub(/(.)\1+/) {|s| "#{s.length}#{s[0]}"}
  end

  def self.decode(code, multiplier = 1, text = [])
    code.scan(/\d+|\D+/).each do |key|
      if /^\d+$/.match(key)
        multiplier = key.to_i
      else
        key.each_char do |char|
          text << char * multiplier
          multiplier = 1
        end
      end
    end
    text.join
  end
end
