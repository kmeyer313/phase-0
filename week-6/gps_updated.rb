# Your Names
# 1) Katie Meyer
# 2) nil

# I spent 1.5 hours on this challenge.

# Bakery Serving Size portion calculator.

def serving_size_calc(item_to_make, num_of_ingredients) # what is expected for arguments
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7} # what the required ingredient amount is for each item

  unless library.key?(item_to_make) # this statement asks if that is not true (the item passed is in the library), then do the following
      raise ArgumentError.new("#{item_to_make} is not a valid input") # to notify user that the item entered does not exist in the library
  end

  serving_size = library[item_to_make] # the serving size variable is created to access the value of the ingredient needed to make item_to_make as stated in the library

  remaining_ingredients = num_of_ingredients % serving_size  # finding remainder of ingredients

  case remaining_ingredients
  when 0 # when there is no remainder
    return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}" # Print to the screen how many of that item you can make
  else
    return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}, you have #{remaining_ingredients} leftover ingredients. Suggested baking items: Make #{remaining_ingredients} of cookie." # Print to the screen how many of that item you can make and suggest what to do with what is leftover.
  end
end

p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
p serving_size_calc("THIS IS AN ERROR", 5)

#  Reflection
=begin

What did you learn about making code readable by working on this challenge?
- The error_counter was pretty confusing. It makes sense to raise on error if the argument does not match what is in the library, but why count? The variable name error_counter is misleading. It wasn't counting errors, but was was counting down when as item matched an item on the list. It still confuses me.

Did you learn any new methods? What did you learn about them?
- .key? wasn't new, but it was something I forgot about. It helped reduce 9 lines of code to 3!

What did you learn about accessing data in hashes?
- This was good practice because it is not automatic for me yet. I learned that the [0] on the end of this method .values_at(item_to_make)[0] is referring to the index for the array that would be in the parentheses (in this case there is no array and is therefore not necessary).

What concepts were solidified when working through this challenge?
- accessing hash keys and values; raising an argument error; relevant use of the modulus
=end