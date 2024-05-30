# Prints the number in serial boxes

def boxy(n)
  return if n <= 0 # early return for non-positive integers
  
  # top and bottom borders
  border_line = '- ' * ((n * 2) + 1)
  
  # the middle line with numbers
  middle_line = '|'
  (1..n).each do |i|
    middle_line += " #{i} |"
  end
  
  # Print the box
  puts border_line
  puts middle_line
  puts border_line
end

# Example

boxy(1)
# Output
# - - - 
# | 1 |
# - - - 

boxy(3)
# Output
# - - - - - - - 
# | 1 | 2 | 3 |
# - - - - - - - 

boxy(5)
# Output
# - - - - - - - - - - - 
# | 1 | 2 | 3 | 4 | 5 |
# - - - - - - - - - - - 
