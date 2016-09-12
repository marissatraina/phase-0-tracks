#---Hangman Class---

# define hangman class

#   initialize with 
#     word variable 
#     empty letters array
#     empty blank spaces array
#     empty guess hash

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
    

#   draw method
#     for every wrong guess it draws a part of stick figure

#   progress method
#     finds correctly guessed index of letter in letters array
#     returns blanks array with filled in correct letters 

class Hangman

  attr_accessor :word, :name1, :name2, :blanks
  attr_reader :word, :guesses

  def initialize 
    @word = ""
    @letters = []
    @blanks = []
    @guesses = []
    @max_guess = 0
  end


  def word_choice(word)
    case  
    when word.length <= 11 && word.length >= 3
      @word = word
      @letters = @word.split('')
      word.length.times do 
        @blanks << " _ "
      end

      puts "*Draws on chalkboard*:#{@blanks.join('')}"
    when word.length < 3
      puts "That word is too short to play hangman with!"
    when word.length > 11
      puts "That word is too long to play hangman with!"
    end
  end


  def num_of_guesses
    len = @word.length

    case 
    when len <= 5 
      @max_guess = 7
      # arr = [:one, :two, :three, :four, :five, :six, :seven]
    when len <= 7 
      @max_guess = 9
      # arr = [:one, :two, :three, :four, :five, :six, :seven, :eigth, :nine]
    when len <= 11
      @max_guess = 12
      # arr = [:one, :two, :three, :four, :five, :six, :seven, :eigth, :nine, :ten, :eleven, :twelve]
    end

    # arr.each do |guess, letter|
    #   @guesses[guess] = letter
    # end
    return @max_guess
  end


  def guess(letter)
    @guesses << letter
    correct = false

    @letters.each do |index|
      if index == letter
        correct = true
      end
    end
    correct
  end

  def repeat_check(letter)
    @guesses.each do |one|
      if letter == one
        puts "You already guessed that letter, try another:"
        letter = gets.chomp
      else letter = letter
      end
    end
    p letter
  end

  def draw(guess_num)
    case guess_num
    when 1
      puts "*Draws head of stick figure*"
    when 2
      puts "*Draws body of stick figure*"
    when 3
      puts "*Draws right arm of stick figure*"
    when 4
      puts "*Draws left arm of stick figure*"
    when 5
      puts "*Draws right leg of stick figure*"
    when 6
      puts "*Draws left leg of stick figure*"
    when 7
      puts "*Draws smiley face on stick figure*"
    when 8
      puts "*Erases smile and draws frown*"
    when 9
      puts "*Draws hat on stick figure*"
    when 10
      puts "*Draws feather on hat*"
    when 11
      puts "*Draws shades to help the stick figure play it cool*"
    when 12
      puts "*Chalk breaks and disintegrates...*"
    end
  end


  def progress(letter)
    index = 0
    len = @word.length
    arr = []

      while index < len
        if @letters[index] == letter
          arr << index 
        end
        index += 1
      end

      arr.each do |ind|
      @blanks[ind] = letter
      end

    p "*Draws in: #{@blanks.join('')}*"
  end

  def victory
   @blanks.join('') == @word
  end

end

#---Driver Code---
test = Hangman.new
test.word_choice("room")
# # test.num_of_guesses
test.guess("r")
test.progress("r")
test.repeat_check("o")
# # test.guess("l")
# # test.guess("aa")
# # test.draw(3)
# # test.draw(12)
# # puts "you are allowed #{test.max_guess} guesses"
# test.progress("r")
# test.progress("o")
# test.progress('m')
# p test.victory
# test.progress('s')



# #----USER INTERFACE----

# # print message "Welcome to Hangman!"
# # player 1 please enter your name:
# # player 2 please enter your name:
# # player 1, please choose a secret word:
#   # run word_choice method 
#   # run num_of_guesses method
# # player 2, you have _ letter-guesses.
# # create [first - twelfth array]
#   # While guesses < max_guess
#   # For every guess
#     # set guess = first symbol in guess array
#     # check if guess matches any previous guess
#     # run guess method
#       # IF guess is correct 
#         # figure out index (or indices) in letters array that it matches
#         # input into blanks index
#         # update blanks index and print back to user
#       # ELSE run draw method

puts "Welcome to Hangman!"
puts "   - - - - - -"
puts "   |         |"
puts "   |"
puts "   |"
puts "   |"
puts "   |"
puts "   |"
puts " - - -"

puts "-----------------------------------------------------------"

puts "Enter: 'start' to begin a new game or 'exit' to power down."
  input = gets.chomp.downcase

puts "-----------------------------------------------------------"


while input != 'exit'

  if input == 'start'
    game = Hangman.new

    puts "Player 1, please enter your name:"
    name1 = gets.chomp
    puts "-----------------------------------------------------------"

    puts "Player 2, please enter your name:"
    name2 = gets.chomp
    puts "-----------------------------------------------------------"

    puts "#{name1}, please carefully type in a secret word:"
      stty_settings = %x[stty -g]
        begin
        %x[stty -echo]
        word = gets.chomp.downcase
        ensure
        %x[stty #{stty_settings}]
        end

    puts "-----------------------------------------------------------"

    game.word_choice(word)
    puts "-----------------------------------------------------------"

    puts "#{name2}, you are allowed #{game.num_of_guesses} letter guesses."

    # first through twelfth array
      order = ["first",
               "second",
               "third",
               "fourth",
               "fifth",
               "sixth",
               "seventh",
               "eighth",
               "ninth",
               "tenth",
               "eleventh",
               "twelfth" ]

      case
      when game.num_of_guesses == 7
        order.delete("eighth")
        order.delete("ninth")
        order.delete("tenth")
        order.delete("eleventh")
        order.delete("twelfth")
        
      when game.num_of_guesses == 9
        order.delete("tenth")
        order.delete("eleventh")
        order.delete("twelfth") 
      end


        @wrong = 1

        order.each do |nth|
          break if game.victory == true          
          puts "Enter your #{nth} guess:"
          guess_letter = gets.chomp.downcase
          guess_letter = game.repeat_check(guess_letter)
              case game.guess(guess_letter)
              when true
                game.progress(guess_letter)
              when false
                game.draw(@wrong)
                @wrong += 1 
              end
          end
        end

        if game.victory == true
          puts "Congratulations #{name2}, you win!!"
        else puts "Womp womp wooomp. Better luck next time #{name2}..."
        end
        

    puts "-----------------------------------------------------------"

    puts "Please enter 'start' to begin a new game or 'exit:'"
    input = gets.chomp.downcase

  end



#---User Driver Code----
# game = Hangman.new
# game.word_choice("room")
# # # game.guess("r")
# game.progress("r")
# # game.guess("o")
# game.progress("o")
# # game.guess('m')
# game.progress('m')

# # # p game.blanks.join('') == game.word
# p game.victory




