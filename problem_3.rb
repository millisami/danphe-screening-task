# Counts the occurences of each character in an arbitrary string
# ignoring the <whitespace>

def count_character_occurence(str)
  # Initialize a hash with default value of 0 so that we don't have to check the character existence
  char_occurences = Hash.new(0)

  str.each_char do |char|
    next if char == ' ' # Ignore whitespace
    char_occurences[char] += 1
  end

  output = char_occurences.map { |char, count| "#{char}:#{count}" }.join(',')
  puts output
end

# Example
str = "hello how are you"
count_character_occurence(str) # Prints h:2,e:2,l:2,o:3,w:1,a:1,r:1,y:1,u:1
