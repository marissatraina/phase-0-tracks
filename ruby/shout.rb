# Shout module


# module Shout

#   def self.yells_angrily(words)
#     puts words + "!!!" + " :("
#   end

#   def self.yells_happily(words)
#     puts words + "!!!" + " :)"
#   end
# end

# #Driver Code
# Shout.yells_angrily("I don't get this")
# Shout.yells_happily("I finally understand this")


module Shout

  def yells_angrily(words)
    puts words + "!!!" + ":("
  end

  def yells_happily(words)
    puts words + "!!!" + ":)"
  end
end

class Teacher
  include Shout
  attr_accessor :name
  
  def initialize(name)
    puts "Professor #{name} is evaluating your learning progress..."
  end
end

class Student
  include Shout
  attr_accessor :name
  
  def initialize(name)
    puts "#{name} is self-evaluating her learning progress..."
  end
end


# Driver Code
coder = Student.new("Marissa")
coder.yells_angrily("I don't understand this I want to give up")
professor = Teacher.new("Kaunitz")
professor.yells_angrily("Embrace confusion. Don't give up")
coder.yells_happily("I finally understand")
professor.yells_happily("Congratulations! All your hard work has paid off")