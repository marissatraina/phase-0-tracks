# Method called grocery_list and as a parameter ask for list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # create empty hash called grocery_hash
  # set value of grocery_hash to one
  # print the list to the console [can you use one of your other methods here?]
# output: display grocery_hash

# Method called add_item takes a parameter of an item and quantity
# input: grocery item name and quantity
# steps: store key, value pair into grocery_hash
# output: print grocery_hash to the console

# Method called remove_item that takes a parameter of an item
# input: grocery item name
# steps: remove key from grocery_hash
# output: print grocery_hash to the console

# Method called update_quantity that will take a grocery item and item qty as a parameter
# input: grocery item and new qty
# steps: reassign the value of the key that's called in the parameter
# output: print grocery_hash to the console

# Metho print_pretty prints the grocery list in a user friendly way
# input: grocery_hash
# steps: print the grocery_list and iterate through each key, value pair
# output: visually appealing grocery list

def create_list(items)
  grocery_hash = {}
  items.split.each do |item|
    grocery_hash[item] = 1    
  end
  print_pretty(grocery_hash)
end

def add_item(list, item, qty = 1)
  list[item] = qty
  print_pretty(list)
end

def remove_item(list, item)
  list.delete(item)
  print_pretty(list)
end

def update_quantity(list, item, qty)
  list[item] = qty
  print_pretty(list)
end

def print_pretty(list)
  puts "Grocery List"
  list.each do |item, qty|
    puts "#{item}: #{qty}"
  end
end


#DRIVER CODE-----------------------------

list1 = create_list("carrots apples cereal")
puts "----------------------------------"
add_item(list1, "oranges", 2)
puts "----------------------------------"
remove_item(list1, "oranges")
puts "----------------------------------"
update_quantity(list1, "apples", 5)
puts "----------------------------------"
print_pretty(list1)

#REFLECTION-------------------------------

# What did you learn about pseudocode from working on this challenge?
  # A well organized pseudocode (in both thought and structure) is 
  # irreplacable, however it is important to leave any "testing" to
  # coding phase and to not overthink certain code stage aspects.

# What are the tradeoffs of using arrays and hashes for this challenge?
  # Hashes allow for key value pairs and reassigning quantities 
  # associated with items. 

# What does a method return?

  # A method returns the last line of code within the method implicitly
  # and anything succeeding return command. 

# What kind of things can you pass into methods as arguments?

  # You can pass variables, non-specific keys, values, symbols. Any 
  # that in it of itself is yet to assigned a 'value.' Specific  
  # placeholders for future values.

# How can you pass information between methods?
  # Through objects/variables with values independent of the methods. 

# What concepts were solidified in this challenge, and what concepts are 
# still confusing?

# This challenge solidified what it means to properly psuedocode, and the 
# importance of using psuedocode to illustrate structure and concept first and
# foremost and leave code brainstorming for the coding stage only. 