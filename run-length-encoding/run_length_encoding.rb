# Implement run-length encoding and decoding.
class RunLengthEncoding
  def self.encode(text, counter = 1, code = [])
    text.chars.each_with_index do |char, idx|
      next if idx.zero?

      if char == text[idx - 1]
        counter += 1
      else
        code << "#{counter if counter > 1}#{text[idx - 1]}"
        counter = 1
      end
    end
    code << "#{counter if counter > 1}#{text[-1]}"
    code.join
  end

  def self.decode(code, multiplier = 1, text = [])
    code = code.scan(/\d+|\D+/)
    code.each do |key|
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
