class RunLengthEncoding
  def self.encode(text, counter = 1, code = [])
    text.chars.each_with_index do |c, idx| 
      next if idx == 0

      if c == text[idx - 1]
        counter += 1
      else
        code << counter if counter > 1
        code << text[idx - 1]
        counter = 1
      end
    end
    code << counter if counter > 1
    code << text[-1]
    code.join
  end

  def self.decode(input)
  end

end

# input = 'AABBBCCCC'
#     # output = '2A3B4C'
# RunLengthEncoding.encode(input)