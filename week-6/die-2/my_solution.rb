# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: an array of strings
# Output: die.roll ==> one of the strings; ArgumentError if Die.new[] (empty array); die.sides ==> number of strings in array
# Steps:
# Create a new Die class

# Initialize labels for sides
# Input: Die.new(labels)
# Output: nothing will print to the console until a method is called on the die, but the instance variable will be stored for the die
# Steps:
#   - Create an instance variable for labels and set it equal to labels
#   - Raise an error if no argument is given when creating a new die (array is empty)

# Define method for sides
# Input: call method on a die (die.sides)
# Output: number of sides (an integer)
# Steps:
# - return instance variable sides that is equal to the amount of strings in the array

# # Define method for roll (to be a random string from labels)
# Input: call method on a die (die.roll)
# Output: random string from #######
# Steps:
# - return random string ##########


# Initial Solution

class Die
  def initialize(labels)
    if labels == []
      raise ArgumentError.new("Array of strings needed for input")
    end
    @labels = labels
  end

  def sides
    # Need to figure out how to return value
  end

  def roll
  end
end

# TESTS
# die = Die.new([])
die = Die.new(['A', 'B', 'C', 'D', 'E', 'F'])
die.sides #==> 6 the number of strings in array
# die.roll #==> returns of ['A', 'B', 'C', 'D', 'E', 'F'], randomly

# die = Die.new(['dog', 'cat', 'whale', 'frog', 'squirrel'])
# die.sides #==> 5 the number of strings in array
# die.roll #==> returns of ['dog', 'cat', 'whale', 'frog', 'squirrel'], randomly



# Refactored Solution








# Reflection