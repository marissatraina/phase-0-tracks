#---Band Class---

class Band
  attr_reader   :genre_options, :hometown_options
  attr_accessor :name, :musicians, :band
  #--Attributes--
  # genre
  # name
  # hometown
  # members 


  def initialize(name)
    @name = name
    @band = [ ]
    puts "Great, I love the name #{name}!"

  # genre_options array
    @genre_options = [ 'blues',
      'punk',
      'folk',
      'jazz',
      'indie',
      'rock',
      'pop',
      'reggae',
      'hip hop',
      'baroque pop'
    ]

  # hometown_options array
    @hometown_options = [ 
      'New York',
      'Chicago',
      'San Francisco',
      'Los Angeles',
      'Seattle',
      'Montreal',
      'London',
      'Paris',
      'Berlin'
    ]

  # member_names array using name generator
    @musicians = [
      'Chikere Marchand',
      'Widsom Nelson', 
      'Darian Sachs', 
      'Brett Cinege',
      'Yi Adamson',
      'Vaska Brassington',
      'Rain Bolton',
      'Ratna Klimek',
      'Lou Lyon',
      'Isabel Favre',
      'Lydie Berger',
      'Marjolaine Gagnon',
      'Lambert Lachapelle',
      'Adrianna Huff',
      'Cherie Perreault',
      'Parris Lowry',
      'Inga McCleary',
      'Alyse Michaels',
      'Della Mac Alastair',
      'Cait Oliverson',
      'Terra Hawk',
      'Oswin Valentini',
      "Isabelle Akerman",
      "Braden Paul",
      'Anona Dwight',
      'Brighid Blake',
      'Gauthier McGuinness'
    ]
  end

#--Methods--

# band_members (between 2 and 5)
  # randomly chooses a number between 2 and 9
  # input into band member hash

  def band_members
    @members = rand(2...6)
    puts "#{name} will be a #{members}-piece band"
  end

  # member_names 
    # randomly choose from array
    # depends on number of members 

  def member_names(members)
    members.times do 
      @band << @musicians.sample
    end

    puts "Cool, that means the lineup will include:"
    @band.each do |musician|
      puts "#{musician}"
    end

  end

# genre_generator
  # select randomly from genre_options
  def genre_generator
    genre = @genre_options.sample
    puts "Awesome, I think #{name}'s music should be of the #{genre} variety."
  end

# hometown_generator
  #randomly select from hometown_options
  def hometown_generator
    city = @hometown_options.sample
  end

end

# # Driver Code
# toulouse = Band.new("Toulouse")
# toulouse.band_members
# toulouse.member_names(@members)
# toulouse.genre_generator
# toulouse.hometown_generator

# User Interface 
puts "Enter 'hi' to get started:"
close = gets.chomp

until close == "exit"

puts "Hey, I heard you want to start a band? (y/n)"
  future = gets.chomp
    if future == "y"
      puts "Yay! We're starting a band! What shall we call it?"
      name = gets.chomp
      new_band = Band.new(name)

      puts "How many musicians do we need? Lets decide on something under 7."
      members = gets.chomp.to_i
      new_band.member_names(members)

      puts "Is it okay if I decide on the genre of music? (y/n)"
        ans = gets.chomp

        if ans == "y"
          new_band.genre_generator
        elsif ans == "n"
          puts "Oh! What is your preference then?"
          genre = gets.chomp
          puts "Sure, I guess I'm open to #{genre}..."
        else puts "Sorry I didn't understand you, maybe we'll discuss another time."
        end

      city = new_band.hometown_generator
      puts "We have a lot of planning to do. I know we're only from #{city}, but soon enough #{name} can be touring the world!"
    elsif future == "n"
      puts "Aw man! Sorry to hear, let me know in the future if you ever do."
    else puts "Sorry, I didn't understand you...maybe a band isn't a good idea."

    end

    puts "Any chance you want to brainstorm another band with me? If not just enter 'exit'."
    close = gets.chomp
end