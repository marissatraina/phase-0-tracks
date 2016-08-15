#Alias Manager
# create vowel string for comparison
$vowels = 'aeiou'
# define method vowel_check to search through string for vowels
def vowel_check(character)
  (char =~ /[aeiou]/) != nil
end
# define method vowels_next to replace vowels
def vowels_next (character)
  if character == 'u'
    character = 'a'
  else 
    character = $vowels[$vowels.index(character) + 1]
  end
  return character
end
# define method alias_generator
  # employ the vowel_check method
  # employ the vowels_next method on string
  # split up string into two pieces
  # swap first and last
# Create alias database to store aliases
#Create User Interface
  # asks user to input first and last name at once
  # loops through until user inputs 'exit'
  # employs alias_generator and stores result in database
#print database