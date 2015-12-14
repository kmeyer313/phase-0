# Die Class 1: Numeric

# I worked on this challenge by myself for 3 hours (reading, working, reflecting) and for 1 hour with Marshall - where most of this came to life. Thanks M!

# 0. Pseudocode
# Create a new Die class

# Initialize for number of sides
# Input: Die.new(#)
# Output: nothing will print to the console until a method is called on the die, but the instance variable will be stored for that die
# Steps:
# - create an instance variable and set it equal to number of sides

# Define method for sides
# Input: call method on a die (die.sides)
# Output: number of sides
# Steps:
# - return instance variable sides that is equal to sides from parameter

# Define method for roll (to be a random number)
# Input: call method on a die (die.roll)
# Output: random number between 1 and the number of sides
# Steps:
# - return random number in range of 1 and the number of sides

# Raise an error if < 1
# Input: a number less than 1
# Output: error message
# Steps:
# - add IF statement to initialize method that would return an error message if the input for sides is less than 1

# 1. Initial Solution

class Die
  def initialize(sides)
    if sides < 1
      raise ArgumentError.new("Side value needs to be at least 1")
    end
    @sides = sides
  end

  def sides
    @sides
  end

  def roll
    rand(1..@sides)
  end
end

# TESTS
# die = Die.new(6)
# p die.sides
# p die.roll

# die = Die.new(0)
# p die.sides
# p die.roll

# 3. Refactored Solution

class Die
  attr_reader :sides
  def initialize(sides)
    raise ArgumentError.new("Side value needs to be at least 1") if sides < 1
    @sides = sides
  end
  def roll
    rand(1..@sides)
  end
end


# 4. Reflection
=begin

What is an ArgumentError and why would you use one?
- An argument error alerts a user that the argument they entered is unacceptable. In this case, the number of sides on a dice had to be greater than 0, if a user passed a 0 or a negative number, the roll method would return nil.

What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
- rand was new and it was cool to see how the instance variable worked within it.
- attr_reader helped condense the code a little bit by allowing me to collapse the def sides method, which repeats its name in the name of the instance variable it uses, to take up one in the refactored solution rather than the three lines in the initial solution. Nice!

What is a Ruby class?
- A class is like a blueprint that is replicated onto any object of the class. The blueprint has attributes and behaviors that each object understands or responds to. Classes that we have worked with the most so far are Array, Hash, and Enumerables. Each of those classes has methods that are unique and sometimes overlapping. But the way methods work on objects of that class can be different.

Why would you use a Ruby class?
- How could you not!? As Ruby is an object-oriented language, we work with objects all the time. Classes help to organize objects and methods. You can also create your own class, objects, and methods, which provides greater flexibility.

What is the difference between a local variable and an instance variable?
- A local variable temporarily stores a value for the course of a method or loop. It can be reassigned without much fuss. They must have lowercase letters and start with a lower case letter or an underscore. This is also known as snake_case.
- An instance variable also stores values and uses the same capitalization and snake_case format as local variables. What makes them different from local variables is that 1) they will always start with a single @ sign, 2) they are only visible to the object to which they belong, and 3) when it is initialized in one method inside a class, it can be used by any method defined within the class. Each object of the class will have its own copy of an instance variable, when one is passed as the argument when it was created.

Where can an instance variable be used?
- An instance variable can be used anywhere within a class.

=end