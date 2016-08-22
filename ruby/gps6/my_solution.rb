# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#
#
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
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    number_of_deaths

  end

  # Depending on population density speed of spreadinig is set in months
  # Prints string describing speed of spreading
  def speed_of_spread(population_density) #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
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