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

  attr_accessor :word
  attr_reader :blanks
  

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
# test = Hangman.new
# test.word_choice("room")
# # # test.num_of_guesses
# test.guess("r")
# test.progress("r")
# test.repeat_check("o")
# # # test.guess("l")
# # test.guess("aa")
# # test.draw(3)
# # test.draw(12)
# # puts "you are allowed #{test.max_guess} guesses"
# test.progress("r")
# test.progress("o")
# test.progress('m')
# p test.victory
# test.progress('s')








