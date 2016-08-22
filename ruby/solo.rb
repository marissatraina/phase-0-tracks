#---Band Class---

class Band
  attr_accessor :name, :band_members, :instrument_options, :genre_options,
                :hometown_options, :musicians, :members
  #--Attributes--
  # genre
  # name
  # hometown
  # members 


  def initialize(name)
    @name = name
    @members = 1
    puts "Let's start a band called #{name}..."
  
  # instrument_options array
    @instrument_options = [ 'vocals', 
      'guitar',
      'drums',
      'bass',
      'brass',
      'strings',
      'keys'
    ]

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
      'Parris Lowry'
    ]
  end

#--Methods--

# band_members (between 2 and 9)
  # randomly chooses a number between 2 and 9
  # input into band member hash

  def band_members
    @members = rand(2...9)
    puts "#{name} will be a #{members}-piece band"
  end

  # member_names 
    # randomly choose from array
    # depends on number of members 

  def member_names(members)
    band = []
    @members.times do 
      band << @musicians.sample
    end

    puts "The band members will include:"
    band.each do |musician|
      puts "#{musician}"
    end

  end


# assign_instruments(argument -> number of members)
  #randomly choose number of instruments depending on number of members
  # input hash with members and instruments

# genre_generator
  # select randomly from genre_options
  def genre_generator
    genre = @genre_options.sample
    puts "#{name}'s music will be of the #{genre} variety."
  end

# kick_out_member(member_name)
  #delete name string from band_members hash

# hometown_generator
  #randomly select from hometown_options
end

# Driver Code
toulouse = Band.new("Toulouse")
toulouse.band_members
toulouse.member_names(@members)
toulouse.genre_generator
