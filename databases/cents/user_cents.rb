#====CENTSFUL USER INTERFACE====
require_relative 'cents'

puts "Welcome to Centsful!"
puts "Enter 'start' to begin budgeting or 'exit' to shut down:"
input = gets.chomp.downcase 

until input == 'exit'
  if input == 'start'

  end
  puts "Please enter 'start' to continue budgeting or 'exit':"
  input = gets.chomp.downcase
end