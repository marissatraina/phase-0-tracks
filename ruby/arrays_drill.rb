def build_array(one, two, three)
  [one, two, three]
end

def add_to_array(array, value)
  p array << value
end



array = []
array_two = ['a','b','c','d','e']
p array

array.push(1, 2, 3, 4, 5)
p array

array.delete_at(2)
p array

array.insert(2, "three")
p array

array.shift
p array

puts "This array includes \"three\":" " #{array.include?("three")}"

arry_three = array + array_two
p arry_three

p build_array(1,2,3)

add_to_array(array_two, 'f')