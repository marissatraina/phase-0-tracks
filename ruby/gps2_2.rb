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

new_list = create_list("carrots apples cereal pizza")
p new_list

# Method to add an item to a list
# input: hash list, item name, and optional quantity
# steps: add items to end of hash
# output: original hash with added item

def add_item(grocery_list, item, quantity=1)
  grocery_list[item] = quantity
  return grocery_list
end 

p add_item(new_list, "chocolate", 3)

# Method to remove an item from the list
# input: hash list and item to be removed
# steps: remove called item
# output: original hash minus removed item

def remove_item(grocery_list, item)
  grocery_list.delete(item)
  return grocery_list
end 

p remove_item(new_list, "carrots")

# Method to update the quantity of an item
# input: hash list, item, new quanitity
# steps: reassign quanitity to item
# output: updated quantity of item

def update_quantity(grocery_list, item, new_quantity)
  grocery_list[item] = new_quantity
  return grocery_list
end 

p update_quantity(new_list, "pizza", 4)

# Method to print a list and make it look pretty
# input: hash list
# steps: iterate through the items and print each key-value pair
# output: printed pretty list

def pretty_list(grocery_list)
  puts "Shopping List"
  grocery_list.each do |item, quantity|
    puts "#{item}: #{quantity}"
  end 
end 
