# Smallest Integer

# I worked on this challenge by myself.

# smallest_integer is a method that takes an array of integers as its input
# and returns the smallest integer in the array
#
# +list_of_nums+ is an array of integers
# smallest_integer(list_of_nums) should return the smallest integer in +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil

# Input: array of random integers
# Output: the smallest integer from the arguments that are put into the array; IF there is no input, output should be nil
# Process:
    # name a variable that will represent the smallest integer => x = list_of_nums[0]
    # one integer at a time will compare to the previous integer that was named the smallest integer => y < x
    # loop through the numbers in the array, comparing them to each other
    # when the next integer is smaller than the previous one, reassign it to the value of the smallest integer => x = y
    # when all of the intergers have been compared and the smallest one is identified, stop the loop and return out the smallest integer => return x
    # if the user does not input anything, the output will be nil => How do you do this???

# Your Solution Below
def smallest_integer(list_of_nums)
  # Your code goes here!
  x = list_of_nums[0]
  list_of_nums.each do |y|
    if y < x
      x = y
    end
  end
  return x
end


# Refactored solution
def smallest_integer2(list_of_nums)
  list_of_nums.min
end


puts smallest_integer([])
puts smallest_integer([0])
puts smallest_integer([-10])
puts smallest_integer([-10, 0, 10])
puts smallest_integer([1, 2, 3])
puts smallest_integer([-10, -20, -30])

puts smallest_integer2([])
puts smallest_integer2([0])
puts smallest_integer2([-10])
puts smallest_integer2([-10, 0, 10])
puts smallest_integer2([1, 2, 3])
puts smallest_integer2([-10, -20, -30])