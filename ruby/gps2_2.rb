# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # Separate string into items within array
  # set default quantity
  # print the list to the console --pass hash to print method
# output: hash

def create_list(string_of_items)
  grocery_list = {}
  grocery_items = string_of_items.split
  grocery_items.each do |item, quantity|
    grocery_list[item] = 1
  end 
  return grocery_list
end 

new_list = create_list("Lemonade Tomatoes Onions Ice-Cream")


# Method to add an item to a list
# input: hash list, item name, and optional quantity
# steps: add items to end of hash
# output: original hash with added item

def add_item(grocery_list, item, quantity=1)
  grocery_list[item] = quantity
  return grocery_list
end 

add_item(new_list, "Lemonade", 2)
add_item(new_list, "Tomatoes", 3)
add_item(new_list, "Ice-Cream", 4)

# Method to remove an item from the list
# input: hash list and item to be removed
# steps: remove called item
# output: original hash minus removed item

def remove_item(grocery_list, item)
  grocery_list.delete(item)
  return grocery_list
end 

remove_item(new_list, "Lemonade")

# Method to update the quantity of an item
# input: hash list, item, new quanitity
# steps: reassign quanitity to item
# output: updated quantity of item

def update_quantity(grocery_list, item, new_quantity)
  grocery_list[item] = new_quantity
  return grocery_list
end 

update_quantity(new_list, "Ice-Cream", 1)

# Method to print a list and make it look pretty
# input: hash list
# steps: iterate through the items and print each key-value pair
# output: printed pretty list

def pretty_list(grocery_list)
  puts "Shopping List"
  grocery_list.each do |item, quantity|
    puts "#{item}: #{quantity}"
  end
  puts "Happy Shopping!"
end 

puts pretty_list(new_list)

# Reflect

# What did you learn about pseudocode from working on this challenge?
  # I well organized pseudocode (in both thought and structure) is 
  # irreplacable.

# What are the tradeoffs of using arrays and hashes for this challenge?
#
  # Hashes allow for key value pairs and reassigning quantities 
  # associated with items. 
#
# What does a method return?

  # A method returns the last line of code within the method implicitly
  # and anything succeeding return command. 
#
# What kind of things can you pass into methods as arguments?

  # You can pass variables, non-specific keys, values, symbols. Any 
  # that in it of itself is yet to assigned a 'value.' Specific  
  # placeholders for future values.

# How can you pass information between methods?
  # Through objects/variables with values independent of the methods. In
  # the code above, new_list is a good example of that.

# What concepts were solidified in this challenge, and what concepts are 
# still confusing?

# This challenge solidified the concept of key-value pairs and default
# quantities associated. Methods, especially the concept of return 
# in methods was solidified. For me, I am on my way to fully 
# understanding blocks but am still slightly confused when it comes to
# their relationship and interaction with and within methods.

