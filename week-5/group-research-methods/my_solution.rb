# Research Methods

# I spent [] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# # Person 1's solution
# def my_array_finding_method(source, thing_to_find)
#   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# def my_hash_finding_method(source, thing_to_find)
#   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# # Identify and describe the Ruby method(s) you implemented.
# #
# #
# #

# # Person 2
# def my_array_modification_method!(source, thing_to_modify)
#   source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# def my_hash_modification_method!(source, thing_to_modify)
#   source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# # Identify and describe the Ruby method(s) you implemented.
# #
# #
# #


# Person 3
# ARRAY
def my_array_sorting_method(source)
  source.sort_by { |x| x.to_s }
end

# FOR TESTING ARRAY
# p my_array_sorting_method(i_want_pets)
# p i_want_pets
# p my_array_sorting_method(i_want_pets) == i_want_pets

# HASH
def my_hash_sorting_method(source)
  source.to_a.sort_by { |x, y| y }
end

# FOR TESTING HASH
# p my_hash_sorting_method(my_family_pets_ages)
# p my_family_pets_ages
# p my_hash_sorting_method(my_family_pets_ages) == my_family_pets_ages


# Identify and describe the Ruby method(s) you implemented.

# #to_s is needed in the array solution to make the integers strings so that they could be compared and sorted with the other strings.

# At first I thought #map was needed in the array solution to make it non-destructive (so that the method does not change the original array permanently). I found that if I didn't ask the method to return "source" before I ended it, I did not need #map or a new variable for the modified array.

# #to_a is needed in the hash solution to transfer the hashes into arrays within the array. Again, #map and reassigning the variable were not needed for it to be non-destructive.

# #sort_by is what I spent most of my time trying to understand. #sort does not work, but #sort_by does. Why? Long story short - The method blocks above take one parameter, not two.
# Above I used { |x| x.to_s } where x.to_s is the only parameter and in { |x, y| y }, y is the only parameter. The method will iterate through all the items, sorting them based on the value of x for the array method and y for the hash method.
# An example of #sort taking two parameters would be { |x, y| x > y} --> x and y are the parameters being compared. The method would iterate through this comparing process for each of the items and they would be sorted.
# I found conflicting opinions for which is better to use in certain situations, some say that #sort is more efficient while others find #sort_by to be more efficient. I suppose it depends on the context of the problem.

# To grasp this, I read the Rubyist 10.8, looked on the Ruby Docs for Enumerables (didn't find the explanations very helpful), two other blogs (the top two when Googling "ruby sort vs sort_by"), and through StackOverflow questions to try to understand the difference between them. It was only after looking through all of that when it started to click.

# I learned some interesting things about the Comparable module in the Rubyist 7.6 that helped me grasp the significance of the built-in comparator method (<=>). Worth diving into when creating new classes.


# # Person 4
# def my_array_deletion_method!(source, thing_to_delete)
#   source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# def my_hash_deletion_method!(source, thing_to_delete)
#   source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# # Identify and describe the Ruby method(s) you implemented.
# #
# #
# #


# # Person 5
# def my_array_splitting_method(source)
#   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# def my_hash_splitting_method(source, age)
#   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# # Identify and describe the Ruby method(s) you implemented.
# #
# #
# #


# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
#
#
#


# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
#
#
#
#