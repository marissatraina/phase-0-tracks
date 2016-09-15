#===Hangman Class====

class Hangman

  attr_reader :blanks
  attr_accessor :word, :max_guess
  
# initialize with instance variables: word, max_guess,
# blanks arr, guesses arr,
  def initialize 
    @word = ""
    @max_guess = 0
    @blanks = []
    @guesses = []
  end

# word_choice method of word parameter allows input based on word length
# when in length range, creates blank spaces arr
# prints message if outside of word length range
  def word_choice(word)
    case word.length
    when 3..11
      @word = word
        word.length.times do 
          @blanks << " _ "
        end
      puts "*Draws on chalkboard*:#{@blanks.join('')}"
    when 0..3
      puts "That word is too short to play hangman with!"
    else
      puts "That word is too long to play hangman with!"
    end
  end

# depending on length of word, max_guess is assigned
  def num_of_guesses
    case @word.length
    when 3..5
      @max_guess = 6
    when 6..7 
      @max_guess = 9
    when 8..11
      @max_guess = 12
    end
    return @max_guess
  end

# repeat_check method takes letter as parameter and checks that the
# letter is proper length & does not match any previous guesses in arr
# until letter is a new guess asks user for new letter, returns accepted guess
  def repeat_check(letter)
    if letter.length != 1 
      puts "Please guess one letter:"
      letter = gets.chomp
    else
        @guesses.each do |one|
          until letter != one
            puts "Already guessed: #{@guesses.join(', ')}"
            puts "You already guessed that letter, try a new letter:"
            letter = gets.chomp
          end
        end
    end
    letter
  end

# guess method takes letter parameter and stores it in guess arr
# checks word for match, returns true if there is a match
  def guess(letter)
    @guesses << letter
    correct = false
      @word.each_char do |index|
        if index == letter
          correct = true
        end
      end
    correct
  end

# draw_figure method draws hangman stick figure depending on how many
# wrong guesses there are 
  def draw_figure(wrong_guess)
    drawing = [ "*Draws head of stick figure*",
                "*Draws body of stick figure*",
                "*Draws right arm of stick figure*",
                "*Draws left arm of stick figure*",
                "*Draws right leg of stick figure*",
                "*Draws left leg of stick figure*",
                "*Draws smiley face on stick figure*",
                "*Erases smile and draws frown*",
                "*Draws hat on stick figure*",
                "*Draws feather on hat*",
                "*Draws shades to help the stick figure play it cool*",
                "*Chalk breaks and disintegrates...*"]
    drawing[wrong_guess]
  end

# updates blanks spaces depending on where the letter matches in the word
# displays correct message to player with progress of guesses
  def progress(letter)
    word.each_char.with_index do |char, index|
      if char == letter
        @blanks[index] = letter
      end
    end
    puts "~*~ Correct ~*~"
    puts "Draws in: #{@blanks.join('')}"
  end

# returns true if word is equal to blanks arr
  def victory
   @blanks.join('') == @word
  end

end

#====Driver Code======
# test = Hangman.new
# test.word_choice("bluets")
# # # test.num_of_guesses
# test.guess("r")
# test.progress("r")
# test.repeat_check("o")
# # # test.guess("l")
# # test.guess("aa")
# # test.draw_figure(3)
# # test.draw_figure(12)
# # puts "you are allowed #{test.max_guess} guesses"
# test.progress("r")
# test.progress("o")
# test.progress('m')
# p test.victory
# test.progress('s')








