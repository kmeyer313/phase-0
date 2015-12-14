# Create Accountability Groups

# I worked on this challenge for 3 hours on my own before turning to a pair for help. We worked for another hour and he helped me come up with a different solution.

# 0 Pseudocode for Initial Attempt
# Input: list of students (first and last name are one element combined)
# Output: arrays with 3-5 students in each
# Steps:
  # - DETERMINE how many names in the list (#count)
  # - CALCULATE quotient of names on list and size of group possibilities (4, 5)
  #   - FOR each group size possibility
  #     - IF remainder is 3 or greater, split into groups of that size
  #   - END

squirrels = ["Alana Hanson", "Angelika Yoder", "Catie Stallings", "Christopher Graf", "Dan Turcza", "Eric Tenza", "Gino Paul Capio", "Hodges Glenn", "James O'Neal", "Jovanka Nikolovski", "Katie Meyer", "Kurt Schlueter", "Lauren Reid", "LeeAnne Hawley", "Lydia Nash", "Marshall Sosland", "Max Davis", "Meagan Munch", "Michal Klimek", "Nathan knockeart", "Rajal Vashisht", "Ray Curran", "Rebecca Gahart", "Sabri helal", "Tiffany Larson", "Tyler McKenzie", "Afton Downey", "Brigitte Kozena", "Chris Wong", "David Rothschild", "David Spivey", "Donald Lang", "Everett Golden", "Gary Wong", "Hagai Zwick", "Jeff Schneider", "Johanna Lonn", "Jordan Fox", "Kevin Huang", "Khamla Phimmachack", "KT Khoo", "Lindsey Ullman", "Peter Lowe", "Roche Janken", "Sharon Claitor", "Thomas Huang", "Timur Catakli", "Todd Seller", "Alexander Nelson", "Alex Forger", "Andrew s Kim", "Christopher Bovio", "Claire Samuels", "David Louie", "Devin Mandelbaum", "Greg Park", "Jillian Dunleavy", "Jonathan Chin", "Joseph Kim", "Karen Ball", "Liam Mackey", "Lucas Nagle", "Michelle Zulli", "Patrick Oliphant", "Steven King", "Susan Savariar", "Violet Dang"]


# 1. Initial Solution -- Could not get it to work when I changed the size of the list
# def acct_groups(list)
#   if list.count % 4 >= 3
#     list.each_slice(4) { |slice| p slice }
#   else list.count % 5 >= 3
#     list.each_slice(5) { |slice| p slice }
#   end
# end

# p acct_groups(squirrels)

# 1. Second Solution with Pair
# Pseudocode
# Organize names from a list into groups of 3-5
# Input: acct_groups(name_of_list)
# Output: arrays of names in groups of 3-5
# Steps:
# - Create a copy of the original list
# - Create a new array that will nest the small arrays the method will create
# - Find amount of items in array
# - Move them into smaller arrays by groups of 4
# - Take leftover items and add each to a different group of 4

def acct_groups(list)
  list_copy = list.map {|person| person}
  list_copy.shuffle! # Cool idea so that it could be different every time
  big_array = []
  while list_copy.size >= 4
    mini_array =  list_copy.pop(4)
    big_array << mini_array
  end
  counter_index = 0
  while list_copy.size > 0
    big_array[counter_index] << list_copy.pop
    counter_index = counter_index + 1
  end
  big_array
end

p acct_groups(squirrels)

# 2. Third Solution Started with Pair -- The second while loop was where continued on my own and ran into a problem as I could not figure out how to add the names that did not make it into a group in the first while loop. The << which worked above in the array solution, is not a method that can be used in Hash, Using = resets the values, so the extra names that didn't fit into a group in the first while loop replaced all the values of the first three hashes.
# def acct_groups_hash(list_copy)
#   hash = {}
#   counter_key = 1
#   while list_copy.size >= 4
#     hash["Accountability Group #{counter_key}"] = list_copy.pop(4)
#     counter_key += 1
#   end
#   counter_key = 0
#   while list_copy.size > 0
#     hash["Accountability Group #{counter_key}"] = list_copy.pop
#     counter_key = counter_key + 1
#   end
#   hash
# end

# p acct_groups_hash(squirrels)

# 3 Refactored Solution
# I tried to make my initial attempt work with some of the ideas from the second solution, but found that this program ran infinitely because the each_slice method in the first while loop does not remove items from the array as pop does. In the second while loop, the list is not getting smaller and popping names into the groups formed by each_slice.
# def acct_groups(list)
#   grouped_list = []
#   while list.size % 4 >= 3
#     grouped_list << list.each_slice(4) { |slice| p slice }
#     grouped_list
#   end
#   counter = 0
#   while list.size > 0
#     grouped_list[counter] << list.pop
#     counter = counter + 1
#   end
# end

# p acct_groups(squirrels)

# Reflection
=begin
What was the most interesting and most difficult part of this challenge?
- I had a really hard time figuring this out on my own. When I worked with a pair, he helped move me forward and fill in some of the holes. I understand all of the methods that we used, I get how the second solution works, but coming up with it from scratch is still really hard for me. It is frustrating because it isn't that I have never heard of these methods before, putting the pieces together on my own is just not clicking yet.

Do you feel you are improving in your ability to write pseudocode and break the problem down?
- Sometimes. I jot a lot of my thinking on paper first and bounce between that and testing things out in IRB. I feel like my pseudocode becomes articulated while working out a solution with code. It is hard for me to anticipate and be specific in pseudocode otherwise.

Was your approach for automating this task a good solution? What could have made it even better?
- At first I thought I had a solution, but after checking in with other students, I feel like I was way off base. The #each_slice method in 10.5.3 of the Rubyist seems like a possible solution. The problem as is returns groups of 4 and one group of 3. However, if I delete one name from the list, the method returns nil. How could I get those leftover names into the slices that I made? I tried applying the pop method, but as I explained above, that did not work. I don't think my initial attempt was the best idea. I need to work on breaking down the problem into smaller steps.

What data structure did you decide to store the accountability groups in and why?
- I thought it made sense to manipulate an array. I can see how it would be useful to store group numbers in keys and student names in the values. That would provide a more efficient way to get specific information about how many groups, who is in which group, etc. But for now, the array methods were more manageable for me to manipulate. Using the pop and << methods were a useful way to create new groups and add the leftover names to others.

What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
- I wanted to try to make my initial solution with the each_slice method work, but wasn't able to figure out how to move the extra names into the arrays slice created.

=end