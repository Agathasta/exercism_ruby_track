# Given a word, compute the scrabble score for that word.
class Scrabble
  TILE = {
    'A' => 1, 'E' => 1, 'I' => 1, 'O' => 1, 'U' => 1,
    'L' => 1, 'N' => 1, 'R' => 1, 'S' => 1, 'T' => 1,
    'D' => 2, 'G' => 2, 'B' => 3, 'C' => 3, 'M' => 3, 'P' => 3,
    'F' => 4, 'H' => 4, 'V' => 4, 'W' => 4, 'Y' => 4, 'K' => 5,
    'J' => 8, 'X' => 8, 'Q' => 10, 'Z' => 10
  }
  TILE.default = 0

  attr_reader :letters, :tiles

  def self.score(word)
    new(word).to_i
  end

  def initialize(word, tiles = TILE)
    @letters = word.to_s.upcase.chars
    @tiles = tiles
  end

  def score
    letters.reduce(0) { |score, letter| score + tiles[letter] }
  end

  def to_i
    score.to_i
  end
end

if $PROGRAM_NAME == __FILE__
  Hawaiian_Tiles = {
    'A' => 1, 'N' => 3, 'O' => 2, 'P' => 8,
    'E' => 4, 'H' => 6, 'U' => 5, 'I' => 3,
    'W' => 9, 'K' => 2, 'L' => 7, 'M' => 8
  }

  puts Scrabble.new('Humuhumunukunukuapuaa', tiles = Hawaiian_Tiles).score
  puts Scrabble.new('Reef triggerfish').score
end
