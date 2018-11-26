
class Scrabble
  def initialize(word)
    @word = word
  end

  def score
    score_hash = letters = { " " => 0, nil => 0, "E" => 1, "A" => 1, "I" => 1, "O" => 1, "N" => 1, "R" => 1, "T" => 1, "L" => 1, "S" => 1,
      "U" => 1, "D" => 2, "G" => 2, "B" => 3, "C" => 3, "M" => 3, "P" => 3,
  "F" => 4, "H" => 4, "V" => 4, "W" => 4, "Y" => 4, "K" => 5, "J" => 8, "X" => 8, "Q" => 10, "Z" => 10 }
if @word == nil
  return 0
elsif @word == " \t\n"
  return 0
elsif @word == ""
  return 0
else
    newWordArr = []
    # if @word == nil
    #   return 0
    # else
      wordArr = @word.upcase.split("")
      wordArr.map { |letter|
        newWordArr.push score_hash[letter] }
        newWordArr.inject(:+)
        # p newWordArr
      end
  end
end
# scrabble = Scrabble.new("banana")
# scrabble.score
