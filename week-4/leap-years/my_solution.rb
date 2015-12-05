# Leap Years

# I worked on this challenge with Marshall.


# Your Solution Below
def leap_year?(year)
  if year % 100 == 0 and year % 400 != 0
    return false
  else
    return year % 4 == 0
  end
end

puts leap_year?(1987)
puts leap_year?(2000)
puts leap_year?(1990)