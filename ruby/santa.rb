# SantaCon Simulator 

# Define Santa Class
class Santa

  # Initialize method
  def initialize 
    puts "Initializing Santa instance..."
    @gender = "N/A"
    @ethnicity = "N/A"
  end 
# attributes not passed in on initialization
  @reindeer_ranking = [
    "Rudolph", 
    "Dasher", 
    "Dancer", 
    "Prancer", 
    "Vixen", 
    "Comet", 
    "Cupid", 
    "Donner", 
    "Blitzen"
  ]
  @age = 0

# Define Speak Method
# => prints ho ho message
  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

# Define eat_milk_and_cookies method
#   Prints good cookie message to user

  def eat_milk_and_cookies(flavor)
    puts "That was a good #{flavor}!"
  end

end

# Test Code 
  # example genders for looping
  example_genders = [
    "agender", 
    "female", 
    "bigender", 
    "male", 
    "female", 
    "gender fluid", 
    "N/A"
  ]

  # example ethnicities for looping
  example_ethnicities = [
    "black", 
    "Latino", 
    "white", 
    "Japanese-African", 
    "prefer not to say", 
    "Mystical Creature (unicorn)", 
    "N/A"
  ]

  puts "While talking to some Santas at SantaCon..."
  example_genders.each do |gender|
    puts "One santa identified as #{gender}."
  end

  puts "Also, we met..."
  example_ethnicities.each do |ethnicity|
    puts "a #{ethnicity} santa!"
  end
  puts "& more!"

puts "What a diverse & beautiful group of santas!"

nick = Santa.new
nick.speak
nick.eat_milk_and_cookies("ginger snap")
