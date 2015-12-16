# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================
# p array[3][0]
# p array[1][2][0]
# p array[1][1][2][0]


# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================
# p hash[outer:][inner:]["almost"][3] # => did not work because called outer and inner with : on wrong side
# p hash[:outer][:inner]["almost"][3]


# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================
# p nested_data[:array][1][:hash]


# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]

number_array.map! do |n|
  if n.is_a?(Array)
    n.map! { |n| n + 5 }
  else
    n + 5
  end
end

# p number_array

# Refactor
number_array.map! { |n| n.is_a?(Array) ? n.map! { |n| n + 5 } : n + 5 }
# p number_array

# Bonus:

# startup_names = ["bit", "find", "fast", "optimize", "scope"]
# startup_names.map! {|name| name + "ly"}
# p startup_names

# Initial
startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]
startup_names.map! do |n|
  if n.is_a?(Array)
    n.map! do |name|
    if name.is_a?(Array)
      name.map! do |name|
        name + "ly"
      end
    else
      name + "ly"
    end
  end
  else
    n + "ly"
  end
end

p startup_names

# # Refactored
startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]
startup_names.map! do |n|
  if n.is_a?(Array)
    n.map! do |name|
    if name.is_a?(Array)
      name.map! {|name| name + "ly"} # reduce do/end statement into code block
    else
      name + "ly" # Tried to find a method to do this, not successful
    end
  end
  else
    n + "ly"
  end
end

p startup_names

# Reflection
=begin

What are some general rules you can apply to nested arrays?
- I found that when we were accessing elements within the arrays and hashes in Release 2, it was helpful to work backwards. Identify the index or hash key that accessed the value we were looking for first, then look into the array or hash just outside of that, and so on until you get to the largest array or hash. We also noticed that the amount of [] used to access the target element matched the amount of }]} at the end of the whole nest.
- Also, it was helpful to break it down one piece at a time. At first we tried to go straight to the target element and then had to back track. It was more beneficial to take it one step at a time (one array or hash at a time).

What are some ways you can iterate over nested arrays?
- This was tricky and got kind of ugly. Using conditional if/else statements worked but we found we had to nest an additional if statement within it because of the nested array within the nested array. This isn't a practical solution if you have a large nested array that has more layers to it because you would need to have an additional if statement for each new layer. We tried to come up with a loop, but could not at the moment. Maybe some time away from the problem will allow for an idea to surface!

Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?
- I haven't used .is_a?(Array) with great understanding before, so this helped it sink in a little better.
- .map! also sunk in a little more with this exercise.

=end