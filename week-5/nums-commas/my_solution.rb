# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.


# 0. Pseudocode

# What is the input? positive integer
# What is the output? a comma separated integer as a string
# What are the steps needed to solve the problem?
  # - change integer to a string
  # - iterate through string and for every 3rd index, insert a comma

# CHANGE INTEGER TO A STRING
#   IF the integer is greater or equal to 0 THEN
#     use method to change integer to string
#     reassign new string to a new variable
#   ELSE
#     nil or puts string notifiying that it is not a positive integer
#   END
#   RETURN string

def separate_comma(integer)
  if integer >= 0
    string = integer.to_s
  else
    puts "#{integer} is not a positive integer. Try a different integer."
  end
  return string

# ITERATE THROUGH STRING AND FOR EVERY 3RD INDEX, INSERT A COMMA
#   SET starting position (index -1)
#   ITERATE
#   UNTIL it cannot move more than 2 indexes left
#     REPEAT from starting position, move 3 indexes left (end up at -4)
#       INSERT comma ---> .insert(index, ",") ???
#       RESET starting position to current index (-4)
#       END
#     END
#   END
  start_at = string[-1]
  until # cannot move more than 2 indexes left
    # move 3 indexes left from start_at
      # reset start_at with new index position
        # string.insert(start_at, ",")

  # end
  return string
end

p separate_comma(54321)
p separate_comma(123)
p separate_comma(0)
# p separate_comma(-1000)



# 1. Initial Solution




# 2. Refactored Solution




# 3. Reflection
=begin
What was your process for breaking the problem down? What different approaches did you consider?
  - reflect

Was your pseudocode effective in helping you build a successful initial solution?
  - reflect

What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?
  - reflect

How did you initially iterate through the data structure?
  - reflect

Do you feel your refactored solution is more readable than your initial solution? Why?
  - reflect

=end