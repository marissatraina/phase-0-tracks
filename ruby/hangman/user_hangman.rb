require_relative 'hangman'

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
  # For every guess
    # set guess = first symbol in guess array
    # check if guess matches any previous guess
    # run guess method
      # IF guess is correct 
        # figure out index (or indices) in letters array that it matches
        # input into blanks index
        # update blanks index and print back to user
      # ELSE run draw method

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
                puts "-----------------------------------------------------------"
              when false
                game.draw(@wrong)
                puts "-----------------------------------------------------------"

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