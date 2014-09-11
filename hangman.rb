require 'colorize'

class Hangman

  def initialize
    @head  = "\@"
    @u_body = "|"
    @l_body = "|"
    @r_arm  = "/"
    @l_arm  = "\\"
    @r_leg  = "/"
    @l_leg  = "\\"
    #@word   = puzzle
  end #end of initialize method

  def puzzle
    words.sample.tr( (a .. z), "-")
  #"carrot".tr(^+guessed_letter, "_")
  end

  def puzzle_length

  end

  def words
    ["carro", "carrot", "corrode", "corral"]
  end

  def gallow
      puts <<GALLOW
_________
|/      |
|       #{@head}
|       #{@u_body}
|      #{@r_arm}#{@l_body}#{@l_arm}
|      #{@r_leg} #{@l_leg}
|
|___
GALLOW
  end #end of gallow method

end #end of Hangman class

h = Hangman.new
h.gallow
# puts h.puzzle

# Draw and print a board
# secret word
# make the concept of the blank spaces
# take a guess and compare it to the secret word, update the characters
  # with guessed letter
# remember guesses
# it should know if a guess already been guessed
# it should know when the game is complete or hanged
# remember which parts have been added
# body parts need to change color
