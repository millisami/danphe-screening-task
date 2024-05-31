require_relative '../problem_3'

RSpec.describe '#count_character_occurence' do
  it 'counts occurrences of characters in a string ignoring whitespaces' do
    expect { count_character_occurence("hello how are you") }.to output("h:2,e:2,l:2,o:3,w:1,a:1,r:1,y:1,u:1\n").to_stdout
    expect { count_character_occurence("xyz xyz xyz") }.to output("x:3,y:3,z:3\n").to_stdout
    expect { count_character_occurence("aabbccddee") }.to output("a:2,b:2,c:2,d:2,e:2\n").to_stdout
  end

  it 'handles a string with special characters' do
    expect { count_character_occurence("a!a#z$z^") }.to output("a:2,!:1,#:1,z:2,$:1,^:1\n").to_stdout
  end

  it 'handles the empty strings' do
    expect { count_character_occurence("    ") }.to output("\n").to_stdout
    expect { count_character_occurence("") }.to output("\n").to_stdout
  end
end
