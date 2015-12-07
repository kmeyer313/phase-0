# Shortest String

# I worked on this challenge by myself.

# shortest_string is a method that takes an array of strings as its input
# and returns the shortest string
#
# +list_of_words+ is an array of strings
# shortest_string(array) should return the shortest string in the +list_of_words+
#
# If +list_of_words+ is empty the method should return nil

# Input: an aray of strings
# Output: the shortest string in the array
# Process:
  # set a variable to equal the first argument in the array
  # set up a loop that will look at each value in the array and determine its length (size) and compare them to determine the string that is shortest

#Your Solution Below
def shortest_string(list_of_words)
  # Your code goes here!
  x = list_of_words[0]
  list_of_words.each do |y|
    if y.length < x.length
      x = y
    end
  end
  return x
end


puts shortest_string(["cat", "zzzzzzz", "apples"])
puts shortest_string([""])
puts shortest_string([])
puts shortest_string(["aaaa", "a", "aa", "aaa"])

#Refactored Solution
def shortest_string2(list_of_words)
  list_of_words.min_by {|x| x.length}
end

puts shortest_string2(["cat", "zzzzzzz", "apples"])
puts shortest_string2([""])
puts shortest_string2([])
puts shortest_string2(["aaaa", "aa", "a", "aaa"])