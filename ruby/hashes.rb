# Interior Designer Client Information Form
#  -Make initial empty hash
form = {}
#  -Greet Client
puts "Welcome to Interior Designers NYC! Please input the following useful clientele information."

#  -Prompt client's first name
puts "First Name:"
#      -set equal to symbol
form[:First_Name] = gets.chomp

#  -Prompt client's last name
puts "Last Name:"
#      -set equal to symbol
form[:Last_Name] = gets.chomp

#  -Prompt number of children
puts "Number of Children:"
#      -convert input to integer
form[:Children] = gets.chomp.to_i

#  -Repeat for other info
puts "Number of Rooms:"
form[:Rooms] = gets.chomp.to_i

puts "Decor Theme:"
form[:Decor_Theme] = gets.chomp.to_s

#  -Print information form
form.each do |key, value|
  puts key.to_s + ': ' + value.to_s
end

#  -Give client option to update
puts "Which information would you like to update? If no edits are necessary, please type 'no' "
edits = gets.chomp

#  -Depending on client input
#      -yes edits --> allow for symbol substitution
#      -no edits --> print thank you
#        -exit and print thank you along with final version
  if edits != "no"
    edits = edits.to_sym
    puts "Please input your edit to #{edits}:"
    form[edits] = gets.chomp
    puts "Thank you for your time! Here is the final verion of your form:"
  else puts "Thank you for your time! Here is the final verion of your form:"
  end

form.each do |key, value|
  puts key.to_s + ': ' + value.to_s
end

