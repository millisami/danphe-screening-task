require_relative '../problem_2'

RSpec.describe '#fizz_buzz' do
  let(:expected_output) do
    (1..100).map do |i|
      if i % 3 == 0 && i % 5 == 0
        "FizzBuzz"
      elsif i % 3 == 0
        "Fizz"
      elsif i % 5 == 0
        "Buzz"
      else
        i.to_s
      end
    end.join("\n") + "\n"
  end

  it 'prints the correct Fizz Buzz sequence from 1 to 100' do
    expect { fizz_buzz }.to output(expected_output).to_stdout
  end
end
