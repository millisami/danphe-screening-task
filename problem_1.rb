# Given 3 numbers, finds the greatest one

def find_greatest(a, b, c)
  if a >= b && a >=c
    a
  elsif b >= a && b >= c
    b
  else
    c
  end
end

# Usage
puts find_greatest(20, 30, 40) # should print 40
puts find_greatest(50, 40, 20) # should print 50
puts find_greatest(10, 10, 7)  # should print 10
puts find_greatest(20, 45, 20) # should print 45
