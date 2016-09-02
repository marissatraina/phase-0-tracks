#Alias Manager
# create vowel string for comparison
$VOWELS = 'aeiou'
$CONSTANTS = 'bcdfghjklmnpqrstvwxyz'

# define method vowel_check to search through string for vowels
def vowel_check(character)
  (character =~ /['aeiou']/) != nil
end

# define method const_check to search thorugh string for
# constants
def const_check(character)
  (character =~ /['bcdfghjklmnpqrstvwxyz']/) != nil
end

# define method vowel_next to replace vowels
def vowel_next(character)
  if character == 'u'
    character = 'a'
  else 
    character = $VOWELS[$VOWELS.index(character) + 1]
  end
  return character
end

def const_next(character)
  if character == 'b'
    character = 'z'
  else 
    character = $CONSTANTS[$CONSTANTS.index(character) + 1]
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
    elsif const_check(database[i])
      database[i] = const_next(database[i])
    else database[i] = database[i]
    end 
  end

  # split up string into two pieces & swap first and last name
  alias_new = database.join('').split(' ').reverse!
  alias_new[0].capitalize!
  alias_new[1].capitalize!

  return alias_new.join(' ')
end

# Create alias database to store aliases
agent_database = {}

#Create User Interface
  # asks user to input first and last name at once
  puts "\n" + "Please enter the agent's full name into the alias generator:"
  agent_name = gets.chomp.downcase
  
  # loops through until user inputs 'exit'
  until agent_name == 'exit'
    puts "\n" + "Alias: " + alias_generator(agent_name)
  # employs alias_generator and stores result in database
    agent_database[agent_name] = alias_generator(agent_name)

    puts "\n" + "Enter another name into the alias generator or enter 'exit' to close the generator:"
    agent_name = gets.chomp.downcase

  end

#print database
agent_database.each { |name, alias_new| puts "\n" + "Agent #{name}, otherwise known as #{alias_new}."}


