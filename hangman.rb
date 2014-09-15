require 'colorize'

class Hangman

  def initialize
    @head       = " "
    @body       = " "
    @r_arm      = " "
    @l_arm      = " "
    @r_leg      = " "
    @l_leg      = " "
    @puzzle     = r_word
    @characters = empty_characters
    @guesses    = []
    @hangedman = [ "@", "|", "/", "\\", "/", "\\" ]

    # @head       = "\@"
    # @body       = "|"
    # @r_arm      = "/"
    # @l_arm      = "\\"
    # @r_leg      = "/"
    # @l_leg      = "\\"
    # @word   = puzzle

  end #initialize

  def make_guess(guessed_letter)
  return false if @guesses.include?(guessed_letter)
    @puzzle.chars.each_with_index do |letter, index|
    # .chars seperates all the characters into an array
    if guessed_letter == letter
        @characters[index] = letter
    end
  end

  @guesses << guessed_letter

  end #make_guess(guessed_letter)

  def end_game(puzzle)
    if @puzzle = 
  end

  def empty_characters
    Array.new(@puzzle.length, "_")
    # above will create an array with as many dashes as the word has letters.
    # can also do a = []
    # @secret.lenght.tims {a << "-"}
  end #empty_characters

  def characters
    @characters
  end #characters

  def guess
    @characters.join
  end #guess

  def r_word
    words.sample
  end #r_word

  def words
    ["carro", "carrot", "corrals", "corrodes", "coronaries"]
  end #words

  def gallow
      puts <<GALLOW
_________
|/      |
|       #{@head}
|       #{@body}
|      #{@r_arm}#{@body}#{@l_arm}
|      #{@r_leg} #{@l_leg}
|
|___

#{@guesses.join(" ")}
GALLOW
  end #gallow

end #Hangman class

#def run
  h = Hangman.new
    #while true
    puts h.gallow
    puts h.guess
    puts "What letter would you like to guess?\n"
    guess = gets.chomp
    h.make_guess(guess)

  #  end
#end #run

#run

# puzzle word
# take a guess and compare it to the secret word, update the characters
  # with guessed letter
# remember guesses
# it should know if a guess already been guessed
# it should know when the game is complete or hanged
# remember which parts have been added
# body parts need to change color
