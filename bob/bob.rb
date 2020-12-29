# frozen_string_literal: true

# Give Bob's answer depending on the punctuation of the remark he gets.
class Bob
  def self.hey(remark)
    new(remark).answer
  end

  attr_reader :remark

  def initialize(remark)
    @remark = remark.strip
  end

  def answer
    if yelled_question? then 'Calm down, I know what I\'m doing!'
    elsif question? then 'Sure.'
    elsif yelled? then 'Whoa, chill out!'
    elsif blabla? then 'Fine. Be that way!'
    else 'Whatever.'
    end
  end

  def yelled_question?
    question? && yelled?
  end

  def question?
    remark[-1] == '?'
  end

  def yelled?
    (/[A-Z]/).match(remark) && remark == remark.upcase
  end

  def blabla?
    remark.empty?
  end
end
