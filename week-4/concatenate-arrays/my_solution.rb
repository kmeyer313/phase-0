# Concatenate Two Arrays

# I worked on this challenge by myself.

# I could not think of another way to do this without using the .concat method we read about in Ch. 9 of the Rubyist. I tried push and << which add elements to the first array, but it isn't really the same concept as combining arrays. Although there are 0 failures for using .concat, the return doesn't look right as it look just like this in iTerm:
# 1
# 1
# cat
# 1
# 2

# I thought it should look like this: [] [1, 1] ["cat", 1, 2]



# Your Solution Below

def array_concat(array_1, array_2)
  # Your code here
  array_1.concat(array_2)
end

puts array_concat([], [])
puts array_concat([1], [1])
puts array_concat(["cat", 1], [2])