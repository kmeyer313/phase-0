# Largest Integer

# I worked on this challenge by myself.

# largest_integer is a method that takes an array of integers as its input
# and returns the largest integer in the array
#
# +list_of_nums+ is an array of integers
# largest_integer(list_of_nums) should return the largest integer in the +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil

# Input: array of integers
# Output: largest integer from array
# Process:
  # Assign a variable to the first integer from the array; the first integer has an index value of 0 => x = list_of_nums[0]
  # set up a loop that compares the assigned variable to each of the integers in the array => list_of_nums.each do |y|
  # if the next integer is larger than the assigned variable, reassign the original variable to the value of the integer that is larger =>
      #if y > x
      #x = y
  # end after all of the integers in the array have been compared
  # return the largest integer

# Your Solution Below
def largest_integer(list_of_nums)
  # Your code goes here!
  x = list_of_nums[0]
  list_of_nums.each do |y|
    if y > x
      x = y
    end
  end
  return x
end

puts largest_integer([])
puts largest_integer([0])
puts largest_integer([-10])
puts largest_integer([-10, 0, 10])
puts largest_integer([1, 2, 3])
puts largest_integer([-10, -20, -30])

# Refactored Solution
def largest_integer2(list_of_nums)
  list_of_nums.max
end

puts largest_integer2([])
puts largest_integer2([0])
puts largest_integer2([-10])
puts largest_integer2([-10, 0, 10])
puts largest_integer2([1, 2, 3])
puts largest_integer2([-10, -20, -30])