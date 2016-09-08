class Puppy

  def iniialize
    p "Initializing new puppy instance..."
  end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def bark(num)
    num.times do 
      puts "woof"
    end
  end

  def roll_over
    puts "*rolls over*"
  end

  def dog_years(age)
    p dog_age = age * 7
  end

  def sit
    puts "*sits*"
  end
end

spot = Puppy.new
spot.fetch("bone")
spot.bark(3)
spot.roll_over
spot.dog_years(9)
spot.sit

class Kitten

  def initialize
    p "Initializing new kitten instance..."
  end

  def chase_mouse
    puts "I brought you back a mouse!"
  end

  def meow(num)
    num.times do 
      puts "meow"
    end
  end

  def scratch
    puts "*claws*"
  end
end

kittens = []

# index = 0
# while index < 50
#   kittens[index] = Kitten.new
#   index += 1
# end

50.times do
  kittens << Kitten.new
end

# p kittens
kittens.each do |kitten|
  kitten.chase_mouse
  kitten.meow(3)
  kitten.scratch
end

