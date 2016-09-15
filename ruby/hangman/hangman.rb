#---Hangman Class---

# define hangman class

#   word_choice method
#     determines length of word
#     if word length <= 11 words or >= 3
#       stores chosen word into word variable
#     splits word into letters
#     store letters into array
#     creates blank space array
  
#   number_of_guesses method
#     allows for 7 guesses if the word length is <= 5 letters
#       stores 7 guess symbols in guess hash
#     allows for 9 guesses if the word length is <= 7 letters
#       stores 9 guess symbols in guess hashes
#     allows for 12 guesses if the word length is <= 11 letters
#       stores 12 guess symbols in guess hash
    
#   guess method
#     if input string length = 1
#       stores guess into respective hash symbol
#     iterates through letters array to check for matches
#     if letter doesn’t match any previously stored symbols
#       & if letter doesn’t match letters in word
#     guess is considered wrong
    

#   draw_figure method
#     for every wrong guess it draws a part of stick figure

#   progress method
#     finds correctly guessed index of letter in letters array
#     returns blanks array with filled in correct letters 

class Hangman

  attr_reader :blanks
  attr_accessor :word, :max_guess
  
# initialize with instance variables: word, max_guess letters arr, 
# blanks arr, guesses arr,
  def initialize 
    @word = ""
    @max_guess = 0
    @letters = []
    @blanks = []
    @guesses = []
  end

# word_choice method of word parameter allows input based on word length
# creates letters array  
  def word_choice(word)
    case word.length
    when 3..11
      @word = word
      # @letters = @word.split('')
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

  def repeat_check(letter)
    @guesses.each do |one|
      until letter != one
        puts "You already guessed that letter, try another:"
        letter = gets.chomp
      end
    end
    letter
  end

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
    puts drawing[wrong_guess]
  end

  def progress(letter)
    word.each_char.with_index do |char, index|
      if char == letter
        @blanks[index] = letter
      end
    end
    puts "~*~ Correct ~*~"
    puts "#{@blanks.join('')}"
  end

  def victory
   @blanks.join('') == @word
  end

end

#---Driver Code---
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








