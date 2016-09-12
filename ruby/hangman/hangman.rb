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
#     displays initial blanks to guessing player
#     for every correct guess
#     returns hash array with filled in correct letters in word

class Hangman

  attr_accessor :word, :max_guess
  attr_reader :blanks, :word, :guesses

  def initialize 
    @word = ""
    @letters = []
    @blanks = []
    @guesses = {}
    @max_guess = 0
  end


  def word_choice(word)
    case  
    when word.length <= 11 && word.length >= 3
      @word = word
      @letters = @word.split('')
      word.length.times do 
        @blanks << " _"
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
      arr = [:one, :two, :three, :four, :five, :six, :seven]
    when len <= 7 
      @max_guess = 9
      arr = [:one, :two, :three, :four, :five, :six, :seven, :eigth, :nine]
    when len <= 11
      @max_guess = 12
      arr = [:one, :two, :three, :four, :five, :six, :seven, :eigth, :nine, :ten, :eleven, :twelve]
    end

    puts "Player 2, you are allowed #{@max_guess} letter-guesses."

    arr.each do |guess, letter|
      @guesses[guess] = letter
    end
    @guesses
    
  end

  def guess(letter)
    correct = false

    @letters.each do |index|
      if index == letter
        correct = true
      end
    end
    correct
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
    index = @letters.index(letter)
    new_index = index
    @blanks[new_index] = letter
    puts "*Draws in: #{@blanks.join('')}*"
  end

end

#---Driver Code---
test = Hangman.new
test.word_choice("bluets")
test.num_of_guesses
test.guess("b")
test.guess("l")
test.guess("aa")
test.draw(3)
test.draw(12)
puts "you are allowed #{test.max_guess} guesses"
test.=progress("b")
test.=progress("l")
test.=progress('t')
test.=progress('s')



#----USER INTERFACE----

# print message "Welcome to Hangman!"
# player 1 please enter your name:
# player 2 please enter your name:
# player 1, please choose a secret word:
  # run word_choice method 
  # run num_of_guesses method
# player 2, you have _ letter-guesses.
# create [first - twelfth array]
  # While guesses < max_guess
  # please enter your first letter-guess:
    # set guess = first symbol in guess array
    # run guess method
      # IF guess is correct 
        # figure out index in letters array that it matches
        # input into blanks index
        # update blanks index and print back to user

      # ELSE run draw method




