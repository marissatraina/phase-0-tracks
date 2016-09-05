# Interior Designer Client Information Form
#  -Make initial empty hash
form = {}
#  -Greet Client
puts "Welcome to Interior Designers NYC! Please input the following useful clientele information."

#  -Prompt client's first name
puts "First Name:"
#      -set equal to symbol
form[:first_name] = gets.chomp

#  -Prompt client's last name
puts "Last Name:"
#      -set equal to symbol
form[:last_name] = gets.chomp

#  -Prompt number of children
puts "Number of Children:"
#      -convert input to integer
form[:children] = gets.chomp.to_i

#  -Repeat for other info
puts "Number of Rooms:"
form[:rooms] = gets.chomp.to_i

puts "Decor Theme:"
form[:decor_theme] = gets.chomp.to_s

#  -Print information form
form.each do |key, value|
  puts key.to_s + ': ' + value.to_s
end

#  -Give client option to update
puts "Which information would you like to update? If no edits are necessary, please type 'no' "
edits = gets.chomp.downcase

#  -Depending on client input
#      -yes edits --> allow for symbol substitution
#      -no edits --> print thank you
#        -exit and print thank you along with final version
  if edits != "no"

      case edits
        when "first_name" || "last_name" || "decor_theme"
          puts "Please input your edit to #{edits}:"
          form[edits.to_sym] = gets.chomp
        when "children" || "rooms"
          form[edits.to_sym] = gets.chomp.to_i
        else puts "Sorry that's not an option!"
      end
  
    puts "Thank you for your time! Here is the final verion of your form:"

  else puts "Thank you for your time! Here is the final verion of your form:"
  end

form.each do |key, value|
  puts key.to_s + ': ' + value.to_s
end

