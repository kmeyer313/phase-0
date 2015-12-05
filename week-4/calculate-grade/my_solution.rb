# Calculate a Grade

# I worked on this challenge with Marshall.


# Your Solution Below
def get_grade(num)
  if num >= 90
    return "A"
  elsif num >= 80
    return "B"
  elsif num >= 70
    return "C"
  elsif num >= 60
    return "D"
  else
    return "F"
  end
end

puts get_grade(24)