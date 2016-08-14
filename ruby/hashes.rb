# Interior Designer Client Information Form
#  -Make initial empty hash
form = {}
#  -Greet Client
puts "Welcome to Interior Designers NYC! Please input the following useful clientele information."

#  -Prompt client's first name
puts "First Name:"
form[:first_name] = gets.chomp

#      -set equal to symbol
#  -Prompt client's last name
#      -set equal to symbol
#  -Prompt number of children
#      -convert input to integer
#  -Repeat for other info
#  -Print information form
#  -Give client option to update
#  -Depending on client input
#      -no edits --> print thank you
#      -yes edits --> allow for symbol substitution
#        -exit and print thank you