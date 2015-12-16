# Die Class 2: Arbitrary Symbols


# I worked on this challenge by myself.
# I spent 1 hour on this challenge.

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
# Output: a random string from the array
# Steps:
# - return random string


# Initial Solution

class Die
  def initialize(labels)
    if labels == []
      raise ArgumentError.new("Array of strings needed for input")
    end
    @labels = labels
  end

  def sides
    @labels.count
  end

  def roll
    @labels.sample
  end
end

# TESTS
# p die = Die.new([])
p die = Die.new(['A', 'B', 'C', 'D', 'E', 'F'])
p die.sides #==> 6 the number of strings in array
p die.roll #==> returns of ['A', 'B', 'C', 'D', 'E', 'F'], randomly

p die = Die.new(['dog', 'cat', 'whale', 'frog', 'squirrel'])
p die.sides #==> 5 the number of strings in array
p die.roll #==> returns of ['dog', 'cat', 'whale', 'frog', 'squirrel'], randomly



# Refactored Solution
class Die
  def initialize(labels)
    if labels == []
      raise ArgumentError.new("Array of strings needed for input")
    end
    @labels = labels
  end

  def sides
    @labels.count # could also use .size or .length
  end

  def roll
    @labels.sample
  end
end

# TESTS
# p die = Die.new([])
p die = Die.new(['A', 'B', 'C', 'D', 'E', 'F'])
p die.sides #==> 6 the number of strings in array
p die.roll #==> returns of ['A', 'B', 'C', 'D', 'E', 'F'], randomly

# Reflection
=begin

What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?
- It was pretty similar. Because we are working with an array instead of a single integer, however, there are a few differences. One was that instead of saying < 0 in the initalization, it had to be == to an empty array to raise the error. In addition, I had to think more closely about how to return the number of sides and how to get a random side when called for .roll. In the first Die challenge, sides was simply equal to the number of sides entered when creating the die. Here we had to call the .count method on the array to return the amount of items in the array. For selecting a random item in the array, .rand does not work but .sample does.

What does this exercise teach you about making code that is easily changeable or modifiable?
- It is nice to be able to use instance variables over an over again. It allows for DRY, clean code.

What new methods did you learn when working on this challenge, if any?
- .sample was new and it was interesting to learn about how it works when you pass an argument through it (not necessary here). If you call .sample(3) it will pull three random items from an array, not just one.

What concepts about classes were you able to solidify in this challenge?
- the value of initialize; using instance variables

=end