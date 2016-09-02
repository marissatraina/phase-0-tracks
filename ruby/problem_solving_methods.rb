#---RELEASE 0: Search Array Method---

# DEFINE method search_array (num_array, num)
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
puts "-------------------"


#---RELEASE 1: Calculate Fibonacci Numbers--



# Define method fib(length)
  # create [0, 1] fib_array
  # length = length - 1 to match index
  # iterate through fib array starting with n = 1
    # WHILE n < length
      # sum = n + fibarray[n - 1]
      # store sum in fib_array
    # print fib_array

def fib(length)
  fib_array = [0, 1]
  sum = 0
  index = 2

  while index < length
    sum = fib_array[index - 2] + fib_array[index - 1]
    fib_array << sum
    index += 1
  end 

  return fib_array
end 

#---Driver Code---

p fib(6)

test = fib(100)

if test[99] == 218922995834555169026
  puts "Test verified for fib(100)!!"
else puts "ERROR, keep trying!"
end


