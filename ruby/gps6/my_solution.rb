# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#
# require_relative calls file within same directory while require # needs the path of the file being called. require also can call # modules while require_relative only can call files 
require_relative 'state_data'

class VirusPredictor

  # defines parameters and variables when instance method is initialized 
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end



  # method that runs predicted deaths and speed_of_spread methods
  def virus_effects
    predicted_deaths(@population_density, @population)
    speed_of_spread(@population_density)
  end

  private

  # method that prints predicted deaths based on population density
  def predicted_deaths(population_density, population)
    # predicted deaths is solely based on population density
    case @population_density 
    when 150..199
      number_of_deaths = (@population * 0.3).floor
    when 100..149
      number_of_deaths = (@population * 0.2).floor
    when 50..99
      number_of_deaths = (@population * 0.1).floor
    else
      if @population_density >= 200 
        number_of_deaths = (@population * 0.4).floor
      else
        number_of_deaths = (@population * 0.05).floor
      end
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  # method that predicts speed of spread in months based on population density
  def speed_of_spread(population_density) #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    case @population_density

    when 150..199
      speed += 1
    when 100..149
      speed += 1.5
    when 50..99
      speed += 2
      if @population_density >= 200
      speed += 0.5
      else
        speed += 2.5
      end
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=====================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state
STATE_DATA.each do |state, pop_data|
  state_report = VirusPredictor.new(state, pop_data[:population_density], pop_data[:population])
  state_report.virus_effects
end

# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


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