# Virus Predictor

# I worked on this challenge by myself, with Todd Seller.
# We spent 2 hours on this challenge.

# EXPLANATION OF require_relative
# linking the state_data.rb to the my_solution.rb file for use, is within the same folder/directory
# require would look outside the current directory

require_relative 'state_data'

class VirusPredictor

# initializing a new instance of VirusPredictor, it takes three arguments; we are assigning them to instance variables
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

# calling to other methods
  def virus_effects
    puts "#{@state} will lose #{predicted_deaths} people in this outbreak and will spread across the state in #{speed_of_spread} months.\n\n"
  end

  private

# depending on the population density, multiply the population by a specific percentage; round down to whole; prints a statement to the console
  def predicted_deaths
    case @population_density
      when (0...50) then (@population * 0.05).floor
      when (50...100) then (@population * 0.1).floor
      when (100...150) then (@population * 0.2).floor
      when (150...200) then (@population * 0.3).floor
      else (@population * 0.4).floor
    end
  end

# depending on population density, the speed will denote how quickly the disease will spread in months
  def speed_of_spread
    case @population_density
      when (0...50) then 2.5
      when (50...100) then 2
      when (100...150) then 1.5
      when (150...200) then 1
      else 0.5
    end
  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

def all_states
  STATE_DATA.each_key do |state|
    VirusPredictor.new(state, STATE_DATA[state][:population_density], STATE_DATA[state][:population]).virus_effects
  end
end

all_states

#=======================================================================
# Reflection Section
=begin
What are the differences between the two different hash syntaxes shown in the state_data file?
- one uses the hash rocket => and the other uses a symbol :

What does require_relative do? How is it different from require?
- require_relative links the state_data.rb to the my_solution.rb file for use; it is within the same folder/directory
- require would look outside the current directory

What are some ways to iterate through a hash?
- we used .each_key to iterate through, the value in the pipes || refers to each key in the hash; we then had to get to the nested array keys that we wanted which requires two [] indexing

When refactoring virus_effects, what stood out to you about the variables, if anything?
- the arguments were unnecessary

What concept did you most solidify in this challenge?
- using case/when statements and iterating through the hash
=end