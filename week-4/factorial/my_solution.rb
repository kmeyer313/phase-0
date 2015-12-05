# Factorial

# I worked on this challenge Timur.

# Input: integer
# Output: the factorial of a number, which is the product of all of the integers from 1 up to that number (so if we want the factorial of 5, we need to multiply 5*4*3*2*1)
# Process:
  # Assign a variable to equal 1 since that is the lowest integer of a number that could be passed through the method
  # Check to see if the number is negative and if it does return 0
  # If the integer is positive, multiply it by the next integer; the variable will be reassigned a new value of the multplied integers

# Your Solution Below
def factorial(number)
  # Your code goes here
  product = 1
  if number < 0
    return 0
  else
    (1..number).each do |y|
      product = product * y
    end
    return product
  end
end

puts factorial(-10)
puts factorial(0)
puts factorial(1)
puts factorial(5)
puts factorial(10)
