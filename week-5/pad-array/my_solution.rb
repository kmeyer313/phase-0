# Pad an Array

# I worked on this challenge with Timur.

# I spent 2 hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input? array with minimum size, an integer, and a string
# What is the output? (i.e. What should the code return?) a new array padded with the updated number of elements added
# What are the steps needed to solve the problem?
# => SET up the method for pad
# => IF integer argument is less than or equal to the length of the array
#       RETURN the array
# => ELSIF integer argument equals to nil
#        RETURN array
#    ELSE
#        subtract array integer from array length (5-3=2)
#        Assign the result equals to new variable = n (n = 2)
#        REPEAT n times (n.times)
#           IF string is nil (string = nil)
#             push nil to end of array (2.times array nil)
#           ELSE push string to end of array (2.times array << "apple")
#           ENDIF
#        END
# => ENDIF
#
# array.pad([array], 5, "apple")
#
# pass an argument through method


# 1. Initial Solution
def pad(array, min_size, value = nil) #non - destructive
    array_modified = []
    if min_size <= array_modified.length
        array_modified = array.map { |x| x }
    elsif min_size == 0
        array_modified = array.map { |x| x }
    else
        array_modified = array.map { |x| x }
        (min_size - array_modified.length).times  {
                array_modified.push(value)
        }
        return array_modified
    end
end

arr_numbers = [1,2,3]

def pad!(array, min_size, value = nil) #destructive
    if min_size <= array.length
        return array
    elsif min_size == 0
        return array
    else
        (min_size - array.length).times  {
                array.push(value)
        }
        return array
    end
end

arr_numbers = [1,2,3]
print pad(arr_numbers, 10, "apple")

# 3. Refactored Solution
def pad(array, min_size, value = nil) #non - destructive
    array_modified = []
    if min_size <= array_modified.length || min_size == 0
        array_modified = array.map { |x| x }
    else
        array_modified = array.map { |x| x }
        (min_size - array_modified.length).times  {
                array_modified.push(value)
        }
        return array_modified
    end
end

def pad!(array, min_size, value = nil) #destructive
    if min_size <= array.length || min_size == 0
        return array
    else
        (min_size - array.length).times  {
                array.push(value)
        }
        return array
    end
end


# 4. Reflection

# Were you successful in breaking the problem down into small steps?
# => Yes at first, but as we wrote the code, we realized that our code worked for the !pad method, but not for the pad method. I don't think we were able to realize that until we ran our tests.

# Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
# => Our pseudocode translated to a solution for !pad pretty easily, which surprised us, but makes sense now in hindsight. Initially we did not think through the fact that the array was permanently changed with our process.

# Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?
# => As stated above, the initial solution worked for !pad. We realized that the array changed and we needed to figure out how to make the final array, after passing through the method, was different from the original array. This took us awhile to figure out. We realized we needed to create a new array variable that would be the output of the pad method. We had to think of a way to pass the original array through the method to create the contents of a new array. We thought to use .map, which does this. When we got to refactoring, we realized we probably should have iterated through the array and refactored to .map but by then we had put enough time into this and needed to call it a day. I think it will be beneficial for me to figure out how to iterate through without using .map.

# When you refactored, did you find any existing methods in Ruby to clean up your code?
# => We were able to collapse the first two methods into one line using || since the return value was the same. As I said previously, .map should have been our refactoring for the iteration of pushing to a new array.

# How readable is your solution? Did you and your pair choose descriptive variable names?
# => I think it's pretty clear? We chose array_modified for the variable in the solution for pad. We didn't have any other variables to name.

# What is the difference between destructive and non-destructive methods in your own words?
# => Destructive methods change the content of the original. Non-destructive do not permanently change the contents, but create a copy and a modified version.
