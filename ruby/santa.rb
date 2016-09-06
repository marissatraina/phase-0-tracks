# SantaCon Simulator 

# Define Santa Class
class Santa
  attr_reader :reindeer_ranking, :ethnicity
  attr_accessor :age, :gender

  # Initialize method
  def initialize(gender, ethnicity)
    puts "Initializing Santa instance..."
    @gender = gender
    @ethnicity = ethnicity
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
  end 

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

  def celebrate_birthday
    @age += 1
    puts "Happy Birthday Santa! Can't believe you are #{age} years old!"
  end

  def get_mad_at(reindeer)
    puts "Unfortunately, #{reindeer} was naughty and ate all the carrots."
    puts "Santa's list of favorites has changed:"
    @reindeer_ranking.delete_at(@reindeer_ranking.index(reindeer))
    @reindeer_ranking << reindeer
  end

end


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

  # Release 1 Code 
#   puts "While talking to some Santas at SantaCon..."
#   example_genders.each do |gender|
#     puts "One santa identified as #{gender}."
#   end

#   puts "Also, we met..."
#   example_ethnicities.each do |ethnicity|
#     puts "a #{ethnicity} santa!"
#   end
#   puts "& more!"

# puts "What a diverse & beautiful group of santas!"

# Release 4: Santa Generator
puts "Today, many Santas from all walks of life contribute to gifting the world!"

27.times do
  saint_nick = Santa.new(example_genders.sample, example_ethnicities.sample)

  puts "One Santa's age: #{saint_nick.age = rand(0...140)}"
  puts "One Santa's gender: #{saint_nick.gender}"
  puts "One Santa's ethnicity: #{saint_nick.ethnicity}"

end

# Test Code
# nick = Santa.new
# nick.speak
# nick.eat_milk_and_cookies("ginger snap")
# nick.get_mad_at("Vixen")
# puts nick.reindeer_ranking
# nick.age = 12
# nick.celebrate_birthday


