# I worked on this challenge by myself.
# This challenge took me .5 hours.
# Pseudocode
# Input: an array of integers
# Output: a "fizzbuzzed" array where the array is identical to the input with the following substitutions:
#     1. Multiples of 3 should be replaced with the string "Fizz"
#     2. Multiples of 5 should be replaced with the string "Buzz"
#     3. Multiples of 15 should be replace with the string "FizzBuzz"
# Steps:
# - SET method definition to accept a parameter for an array
# - WHILE loop to iterate through array
#     IF integer is multiple of 15 THEN
#       replace with "FizzBuzz"
#     ELSIF integer is multiple of 3 THEN
#       replace with "Fizz"
#     ELSEIF integer is multiple of 5 THEN
#       replace with "Buzz"
#     ELSE
#       leave alone
#     ENDIF

# Initial Solution
def super_fizzbuzz(array)
  x = 0
  while x < array.length
    if array[x] % 15 == 0
      array[x] = "FizzBuzz"
    elsif array[x] % 3 == 0
      array[x] = "Fizz"
    elsif array[x] % 5 == 0
      array[x] = "Buzz"
    else
    end
  x += 1
  end
  p array
end


super_fizzbuzz([1,2,3])
super_fizzbuzz([1,2,5])
super_fizzbuzz([1,2,15])
super_fizzbuzz([30,9,20,1])

# Refactored Solution
def super_fizzbuzz(array)
  array.map! do |x|
    if x % 15 == 0
      x = "FizzBuzz"
    elsif x % 3 == 0
      x = "Fizz"
    elsif x % 5 == 0
      x = "Buzz"
    else
      x
    end
  end
  p array
end


super_fizzbuzz([1,2,3])
super_fizzbuzz([1,2,5])
super_fizzbuzz([1,2,15])
super_fizzbuzz([30,9,20,1])



# Reflection
=begin

What concepts did you review or learn in this challenge?
- iterating through an array in Ruby with and without a built-in method

What is still confusing to you about Ruby?
- nothing surfaced with this challenge; nice to be writing in Ruby again! :)

What are you going to study to get more prepared for Phase 1?
- more advanced Ruby concepts, refamiliarize myself with the syntax (JavaScript is on my mind at the moment); I'll try some of the harder Ruby challenges next week

=end