# I worked on this challenge [by myself, with: ].


# Your Solution Below

def valid_triangle?(a, b, c)
  if a + b > c and a + c > b and b + c > a
    return true
  else
    return false
  end
end
