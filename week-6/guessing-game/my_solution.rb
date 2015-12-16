# Build a simple guessing game


# I worked on this challenge by myself.
# I spent 1.5 hours on this challenge.

# Pseudocode

# Create a class GuessingGame

# Initialize
# Input: creation of new game with integer argument
# Output: nothing, this will initialize the assignment of the instance variable and which will allow other methods to be called on the new game
# Steps:
# - Initialize with argmuent of answer
#   - @answer = answer

# Create method for guess
# Input: guess method call with integer argument
# Output: :high if guess is > answer; :correct if guess = to answer; :low if guess is < answer
# Steps:
  # - IF guess is > answer
  #   - return :high
  # - ELSIF guess is = answer
  #   - return :correct
  # - ELSE guess is < answer
  #   - return :low
  # END

# Create method for solved?
# Input: solved? method call
# Output: true if recent guess is correct, false otherwise
# Steps:
#   - IF :correct
#     - return true
#   - ELSE
#     - return false

# Create driver tests

# # Initial Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
    @guess = nil
  end

  def guess(integer)
    @guess = integer
    if integer > @answer
      return :high
    elsif integer < @answer
      return :low
    else integer == @answer
      return :correct
    end
  end

  def solved?
    @guess == @answer
  end

end

game = GuessingGame.new(10)
p game.solved? # => false
p game.guess(5) # => :low
p game.guess(20) # => :high
p game.solved? # => false
p game.guess(10) # => correct
p game.solved? # => true

# Refactor
# Didn't do much but take out unnecessary words from initial solution that were more for my own assurances
class GuessingGame
  def initialize(answer)
    @answer = answer
  end

  def guess(integer)
    @guess = integer
    if integer > @answer
      :high
    elsif integer < @answer
      :low
    else
      :correct
    end
  end

  def solved?
    @guess == @answer
  end
end

game = GuessingGame.new(10)
p game.solved? # => false
p game.guess(5) # => :low
p game.guess(20) # => :high
p game.solved? # => false
p game.guess(10) # => correct
p game.solved? # => true

# Reflection
=begin

How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?
- the instance variable @answer is similar to how we would hold the answer in our head throughout the guessing time; you need to continually compare it to the person's guess
- I don't really see how the solved? method relates to the guessing game in real life because if they guess the answer correctly, that makes it clear that it is solved.

When should you use instance variables? What do they do for you?
- Instance variables hold a value for the life of the run of the program. In this program, each time a new guess was called, @answer needed to be the same as it was from the beginning of the game that was initialized. So it is important for it to maintain its value. @guess did not need to be the same for every game, rather we expected it to change everytimg the method guess was called, but when the guess was called, the value of @guess needed to stay the same to be able to execute the if/else flow. When the solved? method was called, it referred to the last value that was saved in @guess.

Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
- Here we are looking for the condition of the guess integer in relation to the @answer, using <, =, and >. To articulate those separate conditions, if/else conditions are helpful.

Why do you think this code requires you to return symbols? What are the benefits of using symbols?
- I thought at first that in the definition of the solved? method I would be able to say :correct == @answer. That did not work. So I'm not really sure why symbols are appropriate here other than the fact that they are similar to strings, so they replace the clunkiness of putting "high", "low", "correct". I know that symbols are immutable, but am not sure why this is valueable in this program yet.

=end
