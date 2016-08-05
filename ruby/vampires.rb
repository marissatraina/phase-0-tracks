#Vampire Detector

puts "Welcome to the new employee survey!"
puts "What is your name?"
name = gets.chomp
puts "How old are you?"
age = gets.chomp
puts "What year were you born?"
birth_year = gets.chomp
puts "Our company cafeteria serves garlic bread. Should we order some for you? (y/n)"
garlic = gets.chomp
puts "Would you like to enroll in the company's health insurance? (y/n)"
insurance = gets.chomp

year = false
birthday = 2016 - birth_year.to_i

  if age.to_i == birthday
    year = true
  end

  if garlic == "y"
    bread = true
  else bread = false
  end 

  if insurance == "y"
    health = true
  else health = false
  end

vampire = false 
  if name == "Drake Cula"
    vampire = true
  elsif name == "Tu Fang"
    vampire = true
  end

  if vampire == true 
    puts "Results: Definitely a vampire."
  end
  
while vampire == false
  if year && (bread || health) == true
    puts "Results: Probably not a vampire."
  elsif year == false
    puts "Results: Almost certainly a vampire."
  else puts "Results: Probably a vampire."
  end
end


 
