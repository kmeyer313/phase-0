# Numbers to Commas Solo Challenge

# I worked with Emmanuel on Monday during office hours after I turned my assignment in. Here is how we fixed Attempt 3! It makes sense! Yay!

# __________________________________________________

# 0. Pseudocode

# Input: positive integer
# Output: comma-separated integer as a string
# Steps:
# - Create new method separate_comma that accepts one argument
# - Change integer to string
# - Split string into separate characters in array
# - Create new array
# - WHILE the amount of elements in array is greater than or equal to 4 THEN
#     - Pop 3 numbers as their own array in the bigger array, adding "," before the group.
# - Push the new array into the original array (if the array size was initially greater than or equal to 4, there may be items still left in the array that were not "popped")
# - Flatten the array
# - Join characters back together

# __________________________________________________

# 1. Initial Solution

def separate_comma(integer)
  integer = integer.to_s
  array = integer.split(//)
  new_array = []
  while array.size >= 4
    group_of_3 = array.pop(3)
    new_array  << [","] + group_of_3
  end
  array << new_array
  array.flatten
  array.join
end

p separate_comma(1000)
p separate_comma(1000000)
p separate_comma(0)
p separate_comma(100)

# __________________________________________________

# 2. Refactored Solution

def separate_comma(integer)
  integer = integer.to_s
  array = integer.split(//)
  new_array = []
  while array.size >= 4
    group_of_3 = array.pop(3)
    new_array  << [","] + group_of_3
  end
  array << new_array
  array.flatten.join
end

p separate_comma(1000)
p separate_comma(1000000)
p separate_comma(0)
p separate_comma(100)
