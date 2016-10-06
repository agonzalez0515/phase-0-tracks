# Virus Predictor

# I worked on this challenge with: Hesham Elrehaimy.
# We spent 1 hour on this challenge.

# EXPLANATION OF require_relative
#require_relative searches withing files only that are located within the same directory
#require searches out side of the scope in which the file the code which contains the file is located. It also could use modules from outside the file.

require_relative 'state_data'

class VirusPredictor
  
  #Allows us to create a new instance with the three set parameters.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end


  def report
  STATE_DATA.each do |key, value|
    initialize(key, value[:population_density], value[:population])  
      virus_effects
    end
  end

# calls the 'predicted_deaths' and 'speed_of_spread' methods
  def virus_effects
    predicted_deaths
    speed_of_spread
  end



  private


  #Returns a printed statement about the number of deaths in each state based on the population density
  def predicted_deaths
    # predicted deaths is solely based on population density
   

    if @population_density >= 200
      x = 0.4

    elsif @population_density >= 150
      x = 0.3

    elsif @population_density >= 100
      x = 0.2

    elsif @population_density >= 50
      x = 0.1

    else
      x = 0.05
    end

    number_of_deaths = (@population * x).floor 
    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end


  # returns a printed report stating the speed of spread of the virus in each state base on the population density.
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    

    if @population_density >= 200
      speed = 0.5

    elsif @population_density >= 150
      speed = 1

    elsif @population_density >= 100
      speed = 1.5

    elsif @population_density >= 50
      speed = 2

    else
      speed = 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end


end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


states = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
states.report

#alabama.virus_effects
# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section
=begin
What are the differences between the two different hash syntaxes shown in the state_data file?
The states used the hash rocket synstax so that they could be strings.  Then we used the symbol 
syntax for the the population and population density since the values were just integers. 
This makes more readable code.

What does require_relative do? How is it different from require?
Require_relative allows you to use code from a different file that's in the same directory as the 
file you are working on. Require allows you to use things like Modules or Gems that can be anywhere else.

What are some ways to iterate through a hash?
You can use .each and .map! to iterate through a hash, depending on what you want the final output to be.

When refactoring virus_effects, what stood out to you about the variables, if anything?
At first glance, I could tell there was some repetitiveness happening in the instance variables but 
I wasn't sure exactly what it meant.  After reviewing it with my pair and guide, we realized that
since we're using instance variables, which are avaible through out the whole class,
we do not need the variables as parameters in the speed and predicted methods.

What concept did you most solidify in this challenge?
Hashes were the most solidified for me.  I felt like I hadn't had enough practice with them, and this assignment
helped me learn how to iterate through one pretty painlessly. 
I also learned about constant variables and Require as I had not come across these before.

=end