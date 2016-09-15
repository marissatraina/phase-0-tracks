require_relative 'hangman'

#----USER INTERFACE----

# print message "Welcome to Hangman!"
# print start or exit message
# UNTIL 'exit'
# player 1 please enter your name:
# player 2 please enter your name:
# player 1, please choose a secret word:
  # run word_choice method 
  # run num_of_guesses method
# player 2, you have _ letter-guesses.
# create [first - twelfth array]
  # Size array based on guess amount
  # For every letter input
    # IF guess does not match any previous guess
    # input guess into guess array
    # run guess method
      # IF guess is correct 
        # run progress method
      # ELSE run draw_figure method & progress method

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


until input == 'exit'

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
      index = game.max_guess - 1
      order = order[0..index]

        @wrong = 0

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
                game.draw_figure(@wrong)
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