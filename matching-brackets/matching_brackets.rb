# Given a string containing brackets [], braces {}, parentheses (), or any combination thereof,
# verify that any and all pairs are matched and nested correctly.
class Brackets
  BRACKETS = { ']' => '[', '}' => '{', ')' => '(' }

  def self.paired?(text)
    text.each_char.with_object(open_brackets = []) do |bracket, open_brackets|
      open_brackets << bracket if BRACKETS.values.include?(bracket)
      mirror_bracket = open_brackets.pop if BRACKETS.keys.include?(bracket)
      return false unless mirror_bracket == BRACKETS[bracket]
    end
    open_brackets.empty?
  end
end
