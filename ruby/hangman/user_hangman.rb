require_relative 'hangman'

#====USER INTERFACE========

puts "Welcome to Hangman!"
puts "   - - - - - -"
puts "   |         |"
puts "   |"
puts "   |"
puts "   |"
puts "   |"
puts "   |"
puts " - - -"

puts "Enter: 'start' to begin a new game or 'exit' to power down."
puts "==========================================================="
input = gets.chomp.downcase

# UNTIL user inputs exit or start will either start game or ask for 
# new input
until input == 'exit'

  if input == 'start'
    game = Hangman.new

    puts "Player 1, please enter your name:"
    name1 = gets.chomp
    puts "-----------------------------------------------------------"

    puts "Player 2, please enter your name:"
    name2 = gets.chomp
    puts "-----------------------------------------------------------"

# when user inputs secret word, letters will not be displayed in terminal
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

# displays number of guesses based on word length to P2
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
      index = game.max_guess - 1   #matches index to guesses so that 5 guesses stops at "fifth"
      order = order[0..index]      

  # every wrong guess is fed to draw_figure
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
                puts game.draw_figure(@wrong)
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
