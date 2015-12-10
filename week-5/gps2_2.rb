#---ARRAY ATTEMPT DURING GPS---ABORTED---SCROLL DOWN FOR HASH ATTEMPT POST-GPS---
# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # define the METHOD
  # add name of array as a parameter
  # set parameter equal blank array
  # print the list to the console [can you use one of your other methods here?]
# output: array - item(index)

#def new_list
#  Array.new
#end

#target = new_list
#wholefoods = new_list

#target = []
#target = [carrots]

# Method to add an item to a list
# input: array, item we want to add
# steps:
# define the METHOD
# give two parameters: array, item
# push the item into the array
# output: array with the item we wanted to add

#def add(array, item)
#  array.push(item)
#  p array
#end

#add(target, "carrots")

# Method to remove an item from the list
# input: array, item to remove
# steps:
# define the METHOD
# give two parameters: array, item
# write name of array -carrots
# output: array without item removed

#def remove(array)
#  array.pop
#  p array
#end

#remove(target)
#p target

# Method to update the quantity of an item
# input:
# steps:
# output:

# Method to print a list and make it look pretty
# input:
# steps:

#--------------HASH ATTEMPT-----------------

# Method to create a list
# input: list of key/value pairs of items separated by commas (example: {"carrots" => 2, "apples" => 5, "cereal" => 1 "pizza" => 1}
# steps:
  # CREATE new hash with key/value pairs
  # p the list to the console
# output: hash

groceries_hash = {
  "carrots" => 2,
  "apples" => 5,
  "cereal" => 1,
}

p groceries_hash


# Method to add an item to a list
# input: item name and quantity
# steps:
# output: p updated list

groceries_hash["pizza"] = 1

p groceries_hash

# Method to remove an item from the list
# input: item name and quantity
# steps:
# output: p updated list

groceries_hash.delete("carrots")

p groceries_hash

# Method to update the quantity of an item
# input: hash key with new value for updated quantity to overwrite previous entry.
# steps:
# output: p updated list

groceries_hash["cereal"] = 2

p groceries_hash


# Method to print a list and make it look pretty
# input: method call to print a list of each item: quantity to a separate line
# steps:
# output: list of items and quanitites

groceries_hash.each do |item, quantity|
  puts "#{item}: #{quantity}"
end

#-------------REFLECTION--------------------
#What did you learn about pseudocode from working on this challenge?
# => The set up for this was kind of confusing. I get the "input", "output", "steps" structure, but I think I might have been less tripped up if it hadn't already been set up for us. It was hard to think through where I would start when they already got us started. I'm not sure if it would have been better to have no pseudocode already ready for us. I tried to use the pseuocode standard reference while we were pairing, but I feel like it was hard to switch back and forth between the two, my pair, and the guide. I think I prefer pseudocoding with paper and pencil first to sketch my ideas out and will do that on future challenges before synthesizing them into readable steps here.

#What are the tradeoffs of using Arrays and Hashes for this challenge?
# => We both thought hashes would probably be better for this challenge, but were a little insecure about it. So we tried to do this it using an array, which I think threw us off even more. Using arrays would have been a little more cumbersome as it would have been hard to assign the quantity to items. I still don't know how we could have done it with an array. Hash made it easier to work with because we were able to send the item: quantity pair into a hash that could easily generate a list.

#What does a method return?
# => A method could return is the value of something is true or false. In the case here, we were modifying the list of groceries by adding, deleting, and modifying the items and their quantities. To see how the methods affected the groceries_hash, we used p to return the changed hash. The final method where we used .each was able to iterate through the list of key/value pairs and print them in a format that looked like a list.

#What kind of things can you pass into methods as arguments?
# You can pass different variables (strings, integers, etc.) through the methods parameters as arguments.

#How can you pass information between methods?
# => For this challenge, the methods all took place within the same scope, so groceries_hash changed a little with each method. After each method, I used "p groceries_hash" to see the updated version of the hash.

#What concepts were solidified in this challenge, and what concepts are still confusing?
# => I was a little shook up from this challenge because we got really lost in the directions and world of arrays during our GPS hour. It was hard for me to recall what I had learned about hashes and I needed to go back and read through my CodeAcademy notes as well as reread relevent sections from the Rubyist. I definitely was over thinking the challenge (the memory of doing the "Night at the Movies" section of CodeAcademy was looming in the back of my head as we worked, but I couldn't recall how it worked - which ended up being much more complicated than what was necessary - using case/when and gets.chomp)
# => For each of the methods I wrote, I needed to use the Rubyist to get the format. I realize that I am reading/learning more passively and that I need to spend more time plunking this stuff out on my keyboard to start solidifying what I am learning.
