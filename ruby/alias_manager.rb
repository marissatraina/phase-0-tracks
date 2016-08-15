#Alias Manager
# create vowel string for comparison
$vowels = 'aeiou'

# define method vowel_check to search through string for vowels
def vowel_check(character)
  (char =~ /[aeiou]/) != nil
end

# define method vowel_next to replace vowels
def vowel_next (character)
  if character == 'u'
    character = 'a'
  else 
    character = $vowels[$vowels.index(character) + 1]
  end
  return character
end

# define method alias_generator
def alias_generator(name)
  #lowercase all strings in database
  database = name.downcase.split('')

  #iterate through database
  database.length.times do |i|
  
  # employ the vowel_check method & vowel_next method on names
  if vowel_check(database[i])
    database[i] = vowel_next(database[i])
  else database[i] = database[i]
  end 
  
  # split up string into two pieces & swap first and last name
  alias = database.join('').split(' ').reverse!
  alias[0].capitalize!
  alias[1].capitalize!

  return swap.join(' ')
end

# Create alias database to store aliases
alias_database = {}

#Create User Interface
  # asks user to input first and last name at once
  puts "\n" + "Please enter the agent full name(s) into the alias generator:"
  agent_name = gets.chomp
  # loops through until user inputs 'exit'
  while agent_name != 'exit'
    puts "\n" + "Alias: " + alias_generator(agent_name)
  # employs alias_generator and stores result in database
  agent_database[agent_name] = alias_generator(agent_name)

  puts "\n" + "Enter another name into the alias generator or enter 'exit' to close the generator:"
  agent_name = gets.chomp

#print database
agent_database.each { |name, alias|} puts "\n" + "Agent #{name}, otherwise known as #{alias}."
