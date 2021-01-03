# Given a string containing brackets [], braces {}, parentheses (), or any combination thereof,
# verify that any and all pairs are matched and nested correctly.
class Brackets
  BRACKETS = { ']' => '[', '}' => '{', ')' => '(' }

  def self.paired?(text)
    new(text).paired?
  end

  attr_reader :brackets
  def initialize(text)
    @brackets = text.scan(/[\[\]\{\}\(\)]*/).join.chars
  end

  def paired?
    compare_brackets.empty?
  end

  def compare_brackets
    brackets.each_with_object(open_brackets = []) do |bracket, open_brackets|
      open_brackets << bracket if BRACKETS.values.include?(bracket)
      mirror_bracket = open_brackets.pop if BRACKETS.keys.include?(bracket)
      return 'not_balanced' unless mirror_bracket == BRACKETS[bracket]
    end
  end
end
