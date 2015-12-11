# Calculate the mode Pairing Challenge

# I worked on this challenge Jim.

# I spent 4 hours on this challenge (2 with Jim and 2 more going over it again to make sure I could do it on my own).

# Complete each step below according to the challenge directions and include it in this file. Also make sure everything that isn't code is commented.

# 0. Pseudocode

# # What is the input? an array of numbers or strings
# # What is the output? an array of the most frequent values
# # What are the steps needed to solve the problem?

# # DEFINE method for mode that takes array as argument
# #   CREATE an empty hash (key/value pair list)
# #   ITERATE through array to create new hash
# #     IF array element does not exist in hash as a key then
# #       ADD first array element as key to hash with value of 1
# #     ELSE
# #       UPDATE hash value by one
# #     END
# #   END
# def mode(array)
#   new_hash = {}
#   array.each do |x|
#     if new_hash.has_key?(x) == false
#       new_hash[x] = 1
#     else
#       new_hash[x] += 1
#     end
#   end
# #  p new_hash


# # CREATE variable for highest frequency and SET to 0
# # ITERATE through each hash value
# #   IF value is greater than the variable then
# #     REASSIGN VARIABLE to equal the value
# #   END

#   highest_frequency = 0
#   new_hash.each_value do |y|
#     if y > highest_frequency
#       highest_frequency = y
#     end
#   # p highest_frequency
#   # end

# # CREATE an empty array
# # ITERATE through the hash
# #   IF the value is equal to the highest frequency then
# #     ADD the key to the empty array
# #   END
# # END
# # PRINT the new array

#   new_array = []
#   new_hash.each do |key, value|
#     if value == highest_frequency
#       new_array.push(key)
#     end
#   end
#   p new_array
# end

# # END
# ----------------------------------------------------------


# 1. Initial Solution
# CREATE new key/value list (hash)
# PUSH array to new_hash where the key is the item from the array and the value is the frequency of the item occuring in the array; add 1 for each occurance of the key in the array
def mode(array)
  new_hash = {}
  array.each do |x|
    if new_hash.has_key?(x) == false
      new_hash[x] = 1
    else
      new_hash[x] += 1
    end
  end

# IDENTIFY highest frequency from hash values
# CREATE variable for highest frequency SET to 0
  highest_frequency = 0
  new_hash.each_value do |z|
    if z > highest_frequency
      highest_frequency = z
    end
  end

# PUSH keys that have values that are equal to the highest frequency to a new array
# CREATE a new array
  new_array = []
  new_hash.each do |key, value|
    if value == highest_frequency
      new_array.push(key)
    end
  end
  p new_array
end

# mode([1,2,3,4,1,2])
# mode(["cats", "dogs", "cats", 1, 1])


# 3. Refactored Solution
def mode(array)
  new_hash = {}
  array.each {|x| new_hash.has_key?(x) ? new_hash[x] += 1 : new_hash[x] = 1}
# used the ternary conditional expression which is {|x| boolean ? do this if true : do this if false}

  highest_frequency = 0
  new_hash.each_value {|y| highest_frequency = y if y > highest_frequency}
# used the simpler 'if' statement which is {|x| expression if boolean} where {} is the same as do/end.

  new_array = []
  new_hash.each {|a,b| new_array.push(a) if b == highest_frequency}
# used the simpler 'if' statement

  p new_array
end

# 4. Reflection

=begin

Which data structure did you and your pair decide to implement and why?
- We implemented the hash because we have two pieces of data per item that we needed to work with 1) the array item (key) 2) the frequency that which it was in the array (value).

Were you more successful breaking this problem down into implementable pseudocode than the last with a pair?
- Yes, although I am still not super confident yet.

What issues/successes did you run into when translating your pseudocode to code?
- I find that I miss stuff in my pseudocode that I realize as I enter the code. I find it a little difficult to pseudocode without knowing what code I will use and what will work. I may find that my pseudocode is wrong. Then I go back and rewrite the pseudocode as I get a better grasp of the problem.

What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?
- The two hash methods that were new to me were .has_key(x)? and .each_value. It took us some time and trial and error to determine that those would be helpful. For refactoring, I ended up using the one-liners (in lines 111, 115, and 119) that I learned from CodeAcademy (although it was not recommended) because I had not implemented them yet. It was cool to know how to use them but I am curious as to understand why DBC said in the directions, "Keep in mind, although one-line solutions look neat, they aren't necessarily the most efficient or 'best code.'" I'm interested to see if there are other enumerable methods that we could have used. We spent most of our research time looking at Ruby Docs for Hash, not Enumerables.

=end