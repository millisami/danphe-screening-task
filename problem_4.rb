# Converts the given number from one number system to another

def convert_number(number, from, to)
  # Convert the given number to an integer based on the `from` number system
  decimal_number = case from
                  when 'decimal'
                    number.to_i
                  when 'binary'
                    number.to_i(2)
                  when 'octal'
                    number.to_i(8)
                  else
                    raise ArgumentError, "Unsupported from number system: #{from}"
                  end

  # Convert the decimal number to the `to` number system
  converted_number = case to
                    when 'decimal'
                      decimal_number.to_s
                    when 'binary'
                      decimal_number.to_s(2)
                    when 'octal'
                      decimal_number.to_s(8)
                    else
                      raise ArgumentError, "Unsupported to number system: #{to}"
                    end
  converted_number
end

# Example
puts convert_number(42, 'decimal', 'octal')   # Should output: 52
puts convert_number(42, 'decimal', 'binary')  # Should output: 101010
puts convert_number('101010', 'binary', 'decimal')  # Should output: 42
puts convert_number('52', 'octal', 'decimal')  # Should output: 42
