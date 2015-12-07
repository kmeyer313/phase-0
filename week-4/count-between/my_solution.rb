# Count Between

# I worked on this challenge by myself.

# count_between is a method with three arguments:
#   1. An array of integers
#   2. An integer lower bound
#   3. An integer upper bound
#
# It returns the number of integers in the array between the lower and upper bounds,
# including (potentially) those bounds.
#
# If +array+ is empty the method should return 0

# Input: an array of numbers, a lower integer bound and a higher integer bound to return the amount of numbers from the array that fall between the bounds
# Output: an integer to show the amount of integers that fall within the bound range
# Process:
  # make sure the lower end of the range is indeed a smaller number than the upper end of the range, if it is not, have the program return 0
  # go through the list of integers in the array and decide if it falls between the range, if it does, **put it back in the array, if it does not, do not include it in the array
  # whatever numbers that are between the range will be counted and returned in the output
  # ** I think this is where I was getting confused and unsure of how to proceed


# Your Solution Below
# I am at a loss for this one. At sometimes it looked like I was close and then it seems I took a few steps backward. I have to come back to this and rethink it if I have time. I have different ideas floating around in here, some commented out as I was testing. Kind of a mess!


def count_between(list_of_integers, lower_bound, upper_bound)
  # Your code goes here!
  r = "lower_bound..upper_bound"
  x = list_of_integers
  list_of_integers.each do |y|
    if
      upper_bound < lower_bound
        return 0
    else
      #y >= lower_bound && y <= upper_bound
       # x = y
        #list_of_integers = x
      r.cover?(list_of_integers)
        return #?
    end
  end
  return list_of_integers
  list_of_integers.size
end

puts count_between([], -100, 100)
#puts count_between(array, 100, -100)
puts count_between([1, 1, 1], 1, 1)
puts count_between([-10, 1, 2], 0, 100)
puts count_between([1, 2, 200], 0, 100)
puts count_between([0], 0, 0)