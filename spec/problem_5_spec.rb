require_relative '../problem_5'

RSpec.describe '#boxy' do
  it 'prints the box when n = 1' do
    expected_output = <<~OUTPUT
    - - - 
    | 1 |
    - - - 
    OUTPUT
    expect { boxy(1) }.to output(expected_output).to_stdout
  end

  it 'prints the box when n = 3' do
    expected_output = <<~OUTPUT
    - - - - - - - 
    | 1 | 2 | 3 |
    - - - - - - - 
    OUTPUT
    expect { boxy(3) }.to output(expected_output).to_stdout
  end

  it 'prints nothing when n = 0' do
    expect { boxy(0) }.to output("").to_stdout
  end
  
  it 'prints nothing for negative input' do
    expect { boxy(-5) }.to output("").to_stdout
  end
end
