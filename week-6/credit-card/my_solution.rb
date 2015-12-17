# Class Warfare, Validate a Credit Card Number


# I worked on this challenge with Marshall Sosland.
# I spent 1.5 hours on this challenge.

# Pseudocode

# Input: credit number (no spaces)
# Output: true or false
# Steps:
# CREATE class for credit card that takes only 16 digits
# INITIALIZE with an argument for number
#  - raise argument error if number is not 16 digits
#  - if number has 16 digits, create instance variable
# CREATE method "check card"
#  - make number a string
#  - create new array
#  - make each character of string an integer and push to new array
#  - access even digits of array by index
#     - IF index even
        # - double the digit for that index and update the new array
#  - join the contents of the array into one string
#  - SET a counter
#    - FOR each character of the string
#    - change to an integer and add to counter (to sum the digits)
#  - IF the sum divided by 10 returns 0
#    - RETURN true/false


# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

class CreditCard
  def initialize(number)
    unless number.to_s.length == 16
      raise ArgumentError.new ("Number needs to have 16 digits")
    end
    @number = number
  end

  def check_card
    string = @number.to_s
    new_array = []
    string.each_char { |x| new_array << x.to_i }
    new_array.each_index do |y|
      if y.even?
        new_array[y] = new_array[y] * 2
      end
    end
    new_string = new_array.join
    counter = 0
    new_string.each_char { |z| counter += z.to_i }
    if counter % 10 == 0
      true
    else
      false
    end
  end
end


# Refactored Solution
class CreditCard
  def initialize(number)
    unless number.to_s.length == 16
      raise ArgumentError.new ("Number needs to have 16 digits")
    end
    @number = number
  end

  def check_card
    array = @number.to_s.split(//)
    array.each_index do |y|
      if y.even?
        array[y] = array[y].to_i * 2
      end
    end
    new_string = array.join
    counter = 0
    new_string.each_char { |z| counter += z.to_i }
    counter % 10 == 0
  end
end


number = CreditCard.new(4563960122001999)

p number.check_card

# Reflection

=begin
What was the most difficult part of this challenge for you and your pair? ## Figuring out how to double the values at the even indices.
What new methods did you find to help you when you refactored? Lines 48-50 was definitely a new way of using .each_index. I also have not used .each_char on a string yet as we did in line 55.
What concepts or learnings were you able to solidify in this challenge? I am feeling much more comfortable with writing methods, using counters, using the modulus, and switching between strings, integers, and arrays. There were a lot of pieces in the challenge that were coming together for me. I drove the whole time, which was good for me because I have not felt confident driving before, so my pair let me drive the whole time to help me build my confidence.
=end