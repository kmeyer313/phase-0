# Numbers to Commas Solo Challenge
# UPDATE - I met with Emmanuel on Monday afternoon after everything was turned in and he helped me work through what was wrong with Attempt #3. I added the working solution in the file my_solution_solved.rb for my own sake. :) You don't have to wrap your mind around where I went wrong if you want to help! I get it now! If you want to take a shot at refactoring what I have, head over to my_solution_solved.rb. I changed one thing but don't know if there is anything else I can do.

# ------ Original Submission Begins Here ------

# I spent 7 hours on this challenge. There are multiple attempts here, none were successful. Attempt 3 was the closest. I sectioned the attempts with ----- lines. Hope you don't get lost!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

 # ______________________________________________________________________

# 0. Pseudocode and Initial Solutions

# ATTEMPT 1
# What is the input? positive integer
# What is the output? a comma separated integer as a string
# What are the steps needed to solve the problem?
  # - change integer to a string
  # - iterate through string and for every 3rd index, insert a comma

# CHANGE INTEGER TO A STRING
#   IF the integer is greater or equal to 0 THEN
#     use method to change integer to string
#     reassign new string to a new variable
#   ELSE
#     nil or puts string notifiying that it is not a positive integer
#   END
#   RETURN string

# def separate_comma(integer)
#   if integer >= 0
#     string = integer.to_s
#   else
#     puts "#{integer} is not a positive integer. Try a different integer."
#   end
#   return string

# ITERATE THROUGH STRING AND FOR EVERY 3RD INDEX, INSERT A COMMA
#   SET starting position (index -1)
#   ITERATE
#   UNTIL it cannot move more than 2 indexes left
#     REPEAT from starting position, move 3 indexes left (end up at -4)
#       INSERT comma ---> .insert(index, ",") ???
#       RESET starting position to current index (-4)
#       END
#     END
# #   END
#   start_at = string[-1]
#   until # cannot move more than 2 indexes left
#     # move 3 indexes left from start_at
#       # reset start_at with new index position
#         # string.insert(start_at, ",")
#   # end
#   return string
# end

# p separate_comma(54321)
# p separate_comma(123)
# p separate_comma(0)
# p separate_comma(-1000)
# ______________________________________________________________________

# ATTEMPT 2 - FAIL - Iterate .insert method after every three index places to insert a comma
# Input: positive integer
# Output: comma-separated integer as a string
# Steps:
# - Create new method separate_comma that accepts one argument
# - Change integer to string
# - Reverse string
# - Split string into separate characters in array
# - (create a new array at some point?)
# - Set a counter to zero (for index of array)
# - Loop until break
#   - Reassign counter to equal counter plus 3
#   - Call .insert method on array, setting index as counter and "," for object to insert
#   - break when reach the end
#   - return array
# - Join characters back together
# - Reverse string

# def separate_comma(integer)
#   integer = integer.to_s
#   integer = integer.reverse
#   array = integer.split(//)
#   # The next line works with the rest of the methods that are not commented out works! It will return "10,000". How do I iterate it through the array??!
#   # array = array.insert(3, ",")
#   index = 0
#   array.each do |n|
#     unless array.last(n=2)
#       index = index + 3
#       array.insert(index, ",")
#     end
#   end
#   array = array.join
#   array.reverse
# end

# p separate_comma(1000) # => "1,000"
# p separate_comma(1000000)  # => "1000,000"
# p separate_comma(0)  # => ",0"
# p separate_comma(100)  # => ",100"

# ______________________________________________________________________

# ATTEMPT 3 - SUPER CLOSE, but not successful - it looks slightly different from the nearly successful version as I was trying to make it successful. Now I just need to build it up from the ground again to get back to where I was. Out of energy and time at the moment...
# Input: positive integer
# Output: comma-separated integer as a string
# Steps:
# - Create new method separate_comma that accepts one argument
# - Change integer to string
# - Split string into separate characters in array
# - Create new arrays
# - IF the amount of elements in array is less than 4, push them to a new array that can be joined back together
# - ELSE if amount of elements in array is greater than or equal to 4 THEN
#     - pop 3 numbers as their own array in the bigger array, adding "," before the group.
# - UNTIL the array size is less than 4 THEN
#     - put the leftover numbers into their own array
#     - Move the remaining numbers to the beginning of the larger array (I found that popping them to the end got me something like this --> ,000,0001 instead of --> 1,000,000 which I was able to do with unshift.)
# - Join characters back together

def separate_comma(integer)
  integer = integer.to_s
  integer = integer
  array = integer.split(//)
  new_array = []
  if array.size <= 3
    new_array << array
    new_array = new_array.join
  else
    while array.size >= 4
      group_of_3 = array.pop(3)
      new_array  << [","] + group_of_3
    until array.size <= 3
      new_array = new_array.unshift(array.pop)
    end
    new_array = new_array.join
  end
end

p separate_comma(1000)
p separate_comma(1000000)
p separate_comma(0)
p separate_comma(100)

# ______________________________________________________________________

# ATTEMPT 4 - Tried to fix the problem from Attempt 3 but started spinning in circles.
# def separate_comma(integer)
#   integer = integer.to_s
#   integer = integer
#   array = integer.split(//)
#   small_num = []
#   large_num = []
#   leftovers = []
#   if array.size <= 3
#     small_num << array
#     small_num = small_num.join
#   else
#     while array.size >= 4
#       group_of_3 = array.pop(3)
#       large_num << [","] + group_of_3
#     until array.size < 4
#       leftovers << array.pop
#     end
#     large_num.unshift(leftovers)
#     large_num = large_num.join
#   end
# end

# ______________________________________________________________________

# 2. Refactored Solution
# Did not get to this, see comments in reflection.

# ______________________________________________________________________

# 3. Reflection
=begin
What was your process for breaking the problem down? What different approaches did you consider?
  - I sketched out what I thought came in between the input and and the output on scratch paper. Then I tried to articulate that into pseduocode. After I had it broken down in a way that seemed logical to me, I set out to find methods to help me do some of the parts I didn't know how to do.
  - I tried various approaches... grouping them, reversing them, and inserting a comma after every 3rd index were the maing ones.

Was your pseudocode effective in helping you build a successful initial solution?
  - My very first pseudocode was the most far off from a solution. With time in between and practice through different challenges, I started to get better ideas for what I could do.

What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?
  - I definitely frequented the Ruby Docs throughout this challenge. I did not get to a point a refactoring because I did not find a working solution to refactor.

How did you initially iterate through the data structure?
  - At first, I wanted to to iterate through the index of the array with a counter that determined every three steps before it placed a comma into the array.
  - After I struggled with that for long enough, I tried a different approach with using pop (in Attempt 3), where I pulled groups of 3 one at a time and added a string comma "," in front of the group before it was pushed to the larger array. I almost did it and I think I was literally a step away because my output was:
p separate_comma(1000) => "1,000"
p separate_comma(1000000) => "1,000,000"
p separate_comma(0) => 00
p separate_comma(100) => 100100
  - I had tested the (0) and (100) before building and testing the loop to make sure it worked and then focused on the loop adding the commas. It was so exciting to figure out how to get the commas in and I could almost taste success when I saw the last two outputs above. I think the error was somewhere in the assigning and reassigning of the array, in that one of them should have been given a different name in the else branch. I changed something else in Attempt 3 that no longer gives me the output you can see a few lines above. I don't rememeber what it was. I copied what I had and dove into Attempt 4 to try to fix it, changing variable names to small_num, large_num, and leftovers, trying to find the place it was breaking down. It got mucky pretty quickly, I got a little lost and exhaust set it. I decided I needed to call it a day (after working on the challenge for 7 hours across two days). I still want to come back to it. I think I was really close to getting it!

Do you feel your refactored solution is more readable than your initial solution? Why?
  - I definitely think the solutions I was coming up with needed to be pared down. I was repeating myself a lot as I reassigned variable values, which was helpful as I initially wrote the code. I couldn't dare try to trim down the pieces that were working! :/

=end