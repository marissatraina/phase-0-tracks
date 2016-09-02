#---RELEASE 0: Search Array Method---

# DEFINE method search_array
  # create empty index array
  # iterate through array (n = 0)
    # WHILE n < num_array.length
      # IF num == element
        # store num in index array
      # Iterate through index array printing each element

def search_array(num_array, num)
  index = []
  n = 0 

    while n < num_array.length
      if num == num_array[n]
        index << n 
      end
      n += 1
    end

  index.each do |ind|
    p ind
  end
end

#----Driver Code----

numbers = [2, 7, 8, 9]
search_array(numbers, 8)
numbers << 8
puts "-------------------"
search_array(numbers, 8)




