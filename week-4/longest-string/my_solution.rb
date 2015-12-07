# Longest String

# I worked on this challenge [by myself, with: ].

# longest_string is a method that takes an array of strings as its input
# and returns the longest string
#
# +list_of_words+ is an array of strings
# longest_string(list_of_words) should return the longest string in +list_of_words+
#
# If +list_of_words+ is empty the method should return nil


# Your Solution Below
def longest_string(list_of_words)
  # Your code goes here!
  x = list_of_words[0]
  list_of_words.each do |y|
    if y.length > x.length
      x = y
    end
  end
  return x
end

puts longest_string([])
puts longest_string([""])
puts longest_string(['cat'])
puts longest_string(['ZZZ', 'zzzzz'])
puts longest_string(['cat', 'aaaaaaa', 'apples'])

# Refactored Solution
def longest_string2(list_of_words)
  list_of_words.max_by {|x| x.length}
end

puts longest_string2([])
puts longest_string2([""])
puts longest_string2(['cat'])
puts longest_string2(['ZZZ', 'zzzzz'])
puts longest_string2(['cat', 'aaaaaaa', 'apples'])