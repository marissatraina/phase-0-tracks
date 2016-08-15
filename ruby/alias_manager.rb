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
  swap = database.join('').split(' ').reverse!
  swap[0].capitalize!
  swap[1].capitalize!

  return swap.join(' ')
end
# Create alias database to store aliases
#Create User Interface
  # asks user to input first and last name at once
  # loops through until user inputs 'exit'
  # employs alias_generator and stores result in database
#print database