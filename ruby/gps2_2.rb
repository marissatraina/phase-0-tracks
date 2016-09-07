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

# Method pretty_print prints the grocery list in a user friendly way
# input: grocery_hash
# steps: print the grocery_list and iterate through each key, value pair
# output: visually appealing grocery list

def grocery_list(list)
  list_hash = {}
  grocery_items = list.split
  grocery_items.each do |item|
    grocery_hash[item] = 1    
  end
  p list_hash
end

def add_item(list, item)
  list[item] = 1
  p list
end



#DRIVER CODE-----------------------------

list1 = grocery_list("carrots apples cereal")
add_item(list1, "orange")