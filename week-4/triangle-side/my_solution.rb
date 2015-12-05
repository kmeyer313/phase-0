# Triangle Side

# I worked on this challenge Marshall.


# Your Solution Below

def valid_triangle?(a, b, c)
  if a + b > c and a + c > b and b + c > a
    return true
  else
    return false
  end
end

puts valid_triangle?(0, 0, 0)
puts valid_triangle?(1, 1, 1)
puts valid_triangle?(3, 4, 5)
puts valid_triangle?(4, 3, 5)
puts valid_triangle?(5, 3, 4)
puts valid_triangle?(10, 10, 100)