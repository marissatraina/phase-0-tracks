#---Band Class---

class Band
  attr_reader   :genre_options, :hometown_options
  attr_accessor :name, :members, :musicians, :band
  #--Attributes--
  # genre
  # name
  # hometown
  # members 


  def initialize(name)
    @name = name
    @members = 1
    @band = [ ]
    puts "Let's start a band called #{name}..."

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
    @members.times do 
      @band << @musicians.sample
    end

    puts "Our band members will include:"
    @band.each do |musician|
      puts "#{musician}"
    end

  end

# genre_generator
  # select randomly from genre_options
  def genre_generator
    genre = @genre_options.sample
    puts "#{name}'s music will be of the #{genre} variety."
  end

# hometown_generator
  #randomly select from hometown_options
  def hometown_generator
    city = @hometown_options.sample
    puts "We are from #{city}, but we dream of touring the world!"
  end

end

# # Driver Code
# toulouse = Band.new("Toulouse")
# toulouse.band_members
# toulouse.member_names(@members)
# toulouse.genre_generator
# toulouse.hometown_generator