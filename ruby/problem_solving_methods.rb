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

puts "-------------------"

#---RELEASE 2: Sort an Array---
# Understanding insertion sort algorithm
# This algorithm works by sorting a small dataset based on certain conditions
# example: least to greatest numbers in a number set
# A step by step visualization & verbal explanation aided
# most in my understanding of this algorithm. To find the right materials
# for myself I can keep of running tab of resources that have worked in
# the past in helping me understand
# While tackling the algorithm I mostly feel a combination of curiosity
# and excitement but battle frustration occasionallyo when a resource
# doesn't include examples

#---Pseudocode--
# insert_sort(num_arry)
  # create final sorted array with pivot stored
  # delete pivot from original array
  # iterate through original array by index
    # WHILE final index < length
      # IF current index <= final element 
        # insert final element before current
      # ELSIF final index == final.length - 1
        # insert final index + 1 before current index

  # return final sorted array

  # Input: [4, 7, 6, 1, 7, 9, 8, 2]
  # Expected Output: [1, 2, 4, 6, 7, 7, 8, 9]

  def insert_sort(num_array)
    # store pivot into new final sorted array
    sorted = [num_array[0]]
    num_array.delete_at(0)

    for i in num_array
      index = 0

      while index < sorted.length

        if i <= sorted[index]
          sorted.insert(index, i)
          break

        elsif index == sorted.length-1
          sorted.insert(index+1, i)
          break
        end

      index += 1
      end

    end

    # return
    sorted
  end

  #---Driver Code---
  arr = [4, 7, 6, 1, 7, 9, 8, 2]
  p insert_sort(arr)




