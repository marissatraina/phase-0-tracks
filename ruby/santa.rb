# SantaCon Simulator 

# Define Santa Class
class Santa

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

# Initialize method
  def initialize 
    puts "Initializing Santa instance..."
  end 
end

# Test Code 
nick = Santa.new 
nick.speak
nick.eat_milk_and_cookies("ginger snap")
