# Prints the number from 1 to 100, 
# but for multiple of 3, prints Fizz 
# and for multiple of 5, prints Buzz
# and for multiple of both, prints FizzBuzz

def fizz_buzz
  (1..100).each do |i|
    if i % 3 == 0 && i % 5 == 0
      puts "FizzBuzz"
    elsif i % 3 == 0
      puts "Fizz"
    elsif i % 5 == 0
      puts "Buzz"
    else
      puts i
    end
  end
end

fizz_buzz
