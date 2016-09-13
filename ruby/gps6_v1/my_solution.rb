# Virus Predictor

# I worked on this challenge with: Matt Galloway.
# We spent 1.5 hours on this challenge.

# EXPLANATION OF require_relative
# Require can load a built-in library or absolute path of
# of a file, require_relative can be used to load files
# in the same relative directory as the current file.

require_relative 'state_data'

class VirusPredictor

  # Creates a new instance and sets the instance variables with the initialize
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  # Calls private methods 
  def virus_effects
    deaths = predicted_deaths(@population_density, @population)
    speed = speed_of_spread(@population_density)
    puts "#{@state} will lose #{deaths} people in this outbreak and will spread across the state in #{speed} months.\n\n"
  end

  # State report method that creates a report for all 50 states in a DRY way
  def self.state_report(data)
    data.each do | state, pop_data| 
      report = VirusPredictor.new(state, pop_data[:population_density], pop_data[:population])
      report.virus_effects
    end
  end


  private

  # Depending on population density a constant is multiplied to the 
  # population, rounds down to nearest integer. Prints state and 
  # number of deaths
  def predicted_deaths(population_density, population)
  # predicted deaths is solely based on population density
    case @population_density
      when 200..Float::INFINITY
        rate = 0.4
      when 150..199
        rate = 0.3
      when 100..149
        rate = 0.2
      when 50..99
        rate = 0.1
      else rate = 0.05
    end

    number_of_deaths = (@population * rate).floor

    number_of_deaths

  end

  # Depending on population density speed of spreadinig is set in months
  # Prints string describing speed of spreading
  def speed_of_spread(population_density) #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    case @population_density
      when 200..Float::INFINITY
        speed += 0.5
      when 150..199
        speed += 1
      when 100..149
        speed += 1.5
      when 50..99
        speed += 2
      else speed += 2.5
    end

    speed

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects

VirusPredictor.state_report(STATE_DATA)
#=======================================================================
# Reflection Section

#--What are the differences between the two different hash 
#--syntaxes shown in the state_data file?

# The exterior hash uses arrows to assign the interior hash as the 
# string's value while the interior hash uses colons to assign 
# the floats to each variable.

#--What does require_relative do? How is it different from require?

# As mentioned previously, require relative can load files in the 
# same directory as the working file whereas require can load
# any file with an absolute path or within the built-in library

#--What are some ways to iterate through a hash?

# There a plenty of ways to iterate through a hash. You can use a block,
# built-in methods, or in this case a written instance method for a specific
# iterative method.

#--When refactoring virus_effects, what stood out to you about
#--the variables, if anything?

# It seemed superfluous to take in more than two arguments when
# two other methods were combined to create virus effects.

#--What concept did you most solidify in this challenge?

# The overall concept of creating a class along with useful instance
# methods was solidified for me. Also working with hashes was further 
# solidified.