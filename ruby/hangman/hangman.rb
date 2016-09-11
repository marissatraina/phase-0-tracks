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

  attr_accessor :word
  attr_reader :blanks, :word, :guesses

  def initialize 
    @word = ""
    @letters = []
    @blanks = []
    @guesses = {}
  end

  def word_choice(word)
    case  
    when word.length <= 11 && word.length >= 3
      @word = word
      word.length.times do 
        @blanks << " _"
      end
      p "*Draws on chalkboard*:#{@blanks.join('')}"
    when word.length < 3
      p "That word is too short to play hangman with!"
    when word.length > 11
      p "That word is too long to play hangman with!"
    end
  end

  def num_of_guesses
    len = @word.length

    case 
    when len <= 5 
      arr = [:one, :two, :three, :four, :five, :six, :seven]
      p "Player 2, you are allowed 7 letter-guesses."
    when len <= 7 
      arr = [:one, :two, :three, :four, :five, :six, :seven, :eigth, :nine]
      p "Player 2, you are allowed 9 letter-guesses."
    when len <= 11
      arr = [:one, :two, :three, :four, :five, :six, :seven, :eigth, :nine, :ten, :eleven, :twelve]
      p "Player 2, you are allowed 12 letter-guesses."
    end

    arr.each do |guess, letter|
      @guesses[guess] = letter
    end
    
  end

  # def guess(letter)
    

end

#---Driver Code---
test = Hangman.new
test.word_choice("bluets")
test.num_of_guesses



