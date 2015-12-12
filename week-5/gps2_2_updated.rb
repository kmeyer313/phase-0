# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # - SET default quantity to 1 for values
  # - CREATE empty hash
  # - ITERATE through each item in hash DO split the items into indidivual strings
  #   - DO push items to hash as keys with default quantity
  # - END
  # - RETURN the list to the console
# output: hash of items with default quantity of 1

def create_a_list(string_of_items)
  qty = 1
  grocery_hash = Hash.new
  string_of_items.split(" ").each do |x|
    grocery_hash[x] = qty
  end
  grocery_hash
end

# TEST
# p create_a_list("carrots apples cereal")

# SET variable for a grocery list to pass through methods in the rest of the challenge
grocery_list = create_a_list("carrots apples cereal")

# Method to add an item to a list
# input: name of grocery list created, new item, and quantity (optional)
# steps:
  # - ADD key/value pair with syntax of hash_name[new_key] = new_value
  # - RETURN grocery list
# output: updated hash list with new item=>qty

def add_an_item(grocery_list, new_item, qty = 1)
  grocery_list[new_item] = qty
  grocery_list
end

# TEST
# p add_an_item(grocery_list, "pizza", 2)

# Method to remove an item from the list
# input: name of grocery list, item to be removed
# steps:
  # - DELETE item to be removed
  # - RETURN grocery_list
# output: hash list without the item/qty that was removed

def remove_an_item(grocery_list, item_to_be_removed)
  grocery_list.delete(item_to_be_removed)
  grocery_list
end

# TEST
# p remove_an_item(grocery_list, "cereal")

# Method to update the quantity of an item
# input: grocery list, item name, new quantity
# steps:
  # - ADD key/value pair with syntax of hash_name[item_to_update] = new_value
  # - RETURN grocery list
# output: updated hash list with new quantity for updated item

def update_quantity(grocery_list, item_to_update, qty)
  grocery_list[item_to_update] = qty
  grocery_list
end

# TEST
# p update_quantity(grocery_list, "pizza", 1)

# Method to print a list and make it look pretty
# input: grocery list
# steps:
  # - ITERATE through hash DO puts list with "#{key}: #{value}"
# output: pretty list for groceries

def print_list(grocery_list)
  grocery_list.each do |item, qty|
    puts "#{item}: #{qty}"
  end
end

# TEST
# print_list(grocery_list)

# Release 3: Test your solution

# Create a new list called on from original list
p grocery_list

# Add the following items to your list
add_an_item(grocery_list, "lemonade", 2)
add_an_item(grocery_list, "tomatoes", 3)
add_an_item(grocery_list, "onions", 1)
add_an_item(grocery_list, "ice cream", 4)
p grocery_list

# Remove lemonade from your list
remove_an_item(grocery_list, "lemonade")
p grocery_list

# Update the ice cream quantity to 1
update_quantity(grocery_list, "ice cream", 1)
p grocery_list

# Print out the list to be readable and nice looking
print_list(grocery_list)

=begin
What did you learn about pseudocode from working on this challenge?
  - It was definitely confusing to me at first as some of the pseudocode was already started, it took me awhile to wrap my head around it in my own thoughts. It was hard to implement pseudocode standards as this was the first challenge that I really tried to use it on. I had to come back to redo this challenge on my own later in the week because I had a really hard time processing it during the GPS. It makes more sense now after practicing on other challenges

What are the tradeoffs of using Arrays and Hashes for this challenge?
  - During the GPS, we attempted to use Arrays, but that was really difficult to do and we were not successful. Later in the week, after more practice with Hashes, it started to sink in better. Hashes are better because there are two elements we needed to work with, item and quantity. This was easier to work with to generate a list, add, remove, update, etc. Trying to manipulate those with arrays is a bit beyond me at the moment.

What does a method return?
  - Before ending the defined method, including the name of the list implicitly returns the updated list based on how the method changed it

What kind of things can you pass into methods as arguments?
  - strings, numbers, hashes, arrays

How can you pass information between methods?
  - I am not really sure about this, but I think that information is passed through the parameters of each method. After the list was created, the list that was generated from the first method became the first parameter for the rest of the methods. Other parameters in the following methods defined what other information was to be expected for that particular method.

What concepts were solidified in this challenge, and what concepts are still confusing?
  - The first time I approached this challenge during the GPS, I did not know what to do. I don't think the practice of writing methods was clicking yet. Throughout the week I read, practiced more, and was able to realize some of the things this challenge asked us to do.
  - I don't fully grasp setting the variable in line 25. This is not something I thought of on my own and got the idea after talking with a peer. It doesn't seem right that I have it equal to the list of items within that parameter. How could I set it so that no matter what string of items are passed through the create_a_list method, the following methods would work.

=end