# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge with: Timur.

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input: an array of numbers
# Output: the sum of array elements
# Steps to solve the problem.
# get each array element one by one and sum them up with each other

# 1. total initial solution
def total(arr_numbers)
  sum = 0
  arr_numbers.each do |x|
    sum = sum + x
  end
  return sum
end

puts total([1, 2, 3])

# 3. total refactored solution

def total_refactored(arr_numbers)
  sum = 0
  array_numbers.each {|a| sum += a}
end

puts total([1, 2, 3])


# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: array of strings
# Output: a joined sentence
# Steps to solve the problem.
  # Dissect each element and merge into a sentence
  # Check if first letter is capitalized
  # First letter should be capitalized
  # End of sentence should have a period

# 5. sentence_maker initial solution
def sentence_maker(array_of_strings)
  st_sentence = ""
  array_of_strings.each do |x|
    if array_of_strings[0] == x
      st_sentence = x.capitalize!
    else
      st_sentence = st_sentence + " " + x.to_s
    end
  end
  return st_sentence + "."
end

puts sentence_maker(["all", "my", "socks", "are", "dirty"])

# 6. sentence_maker refactored solution
def sentence_maker2(array_of_strings)
  return array_of_strings[0].capitalize! + " " + array_of_strings[1..5].join(" ") + "."
end

puts sentence_maker2(["alaska", "has", "over", "586", "thousand", "miles"])