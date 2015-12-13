# 1 Pseudocode
# Input: list of students (first and last name are one element combined)
# Output: arrays with 3-5 students in each
# Steps:
  # - DETERMINE how many names in the list (#count)
  # - CALCULATE quotient of names on list and size of group possibilities (3, 4, 5)
  #   - FOR each group size possibility
  #     - IF remainder is 3 or greater, split into groups of that size
  #   - END

squirrels = ["Alana Hanson", "Angelika Yoder", "Catie Stallings", "Christopher Graf", "Dan Turcza", "Eric Tenza", "Gino Paul Capio", "Hodges Glenn", "James O'Neal", "Jovanka Nikolovski", "Katie Meyer", "Kurt Schlueter", "Lauren Reid", "LeeAnne Hawley", "Lydia Nash", "Marshall Sosland", "Max Davis", "Meagan Munch", "Michal Klimek", "Nathan knockeart", "Rajal Vashisht", "Ray Curran", "Rebecca Gahart", "Sabri helal", "Tiffany Larson", "Tyler McKenzie", "Afton Downey", "Brigitte Kozena", "Chris Wong", "David Rothschild", "David Spivey", "Donald Lang", "Everett Golden", "Gary Wong", "Hagai Zwick", "Jeff Schneider", "Johanna Lonn", "Jordan Fox", "Kevin Huang", "Khamla Phimmachack", "KT Khoo", "Lindsey Ullman", "Peter Lowe", "Roche Janken", "Sharon Claitor", "Thomas Huang", "Timur Catakli", "Todd Seller", "Alexander Nelson", "Alex Forger", "Andrew s Kim", "Christopher Bovio", "Claire Samuels", "David Louie", "Devin Mandelbaum", "Greg Park", "Jillian Dunleavy", "Jonathan Chin", "Joseph Kim", "Karen Ball", "Liam Mackey", "Lucas Nagle", "Michelle Zulli", "Patrick Oliphant", "Steven King", "Susan Savariar", "Violet Dang"]

def acct_groups(list_of_names_array)
  if list_of_names_array.count % 4 >= 3
    list_of_names_array.each_slice(4) { |slice| p slice }
  elsif list_of_names_array.count % 5 >= 3
    list_of_names_array.each_slice(5) { |slice| p slice }
  elsif list_of_names_array.count % 3 >= 3
    list_of_names_array.each_slice(3) { |slice| p slice }
  end
end

p acct_groups(squirrels)

# Reflection
=begin
What was the most interesting and most difficult part of this challenge?
- I'm getting worried because I don't think I am getting this stuff. I came up with this solution which worked initially, but it failed when I deleted one person from the group. When I see what other people have done to solve this problem, I feel like I am on a whole different planet. My thinking is nowhere near as complex as theirs. What did I miss? Where are they getting their ideas from? I feel like I am missing the boat here.

Do you feel you are improving in your ability to write pseudocode and break the problem down?
- Sometimes. I jot a lot of my thinking on paper first and bounce between that and testing things out in IRB. I feel like my pseudocode becomes articulated while working out a solution with code. It is hard for me to anticipate and be specific in pseudocode otherwise.

Was your approach for automating this task a good solution? What could have made it even better?
- At first I thought I had a solution, but after checking in with other students, I feel like I am way off base. The #each_slice method in 10.5.3 of the Rubyist seems like a possible solution. The problem as is returns groups of 4 and one group of 3. However, if I delete one name from the list, the method returns nil.

What data structure did you decide to store the accountability groups in and why?
- I thought it made sense to manipulate an array. I couldn't think through how to use a hash. But I can see how it could be useful to store the amount of groups that are created in keys and student names in the values. That would provide a more efficient way to get specific information about how many groups, who is in which group, etc.

What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
- I didn't refactor because I don't think the initial solution is going to work. I think the #each_slice method could work as a refactored solution and that I should have done something with more steps for the initial solution. If I have time, I need to come back to this challenge with new eyes and see if I can figure out where I am going wrong.

=end