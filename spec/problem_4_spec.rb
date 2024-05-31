require_relative '../problem_4'

RSpec.describe '#convert_number' do
  context 'decimal to other systems' do
    it 'converts decimal to octal' do
      expect(convert_number(42, 'decimal', 'octal')).to eq('52')
    end

    it 'converts decimal to binary' do
      expect(convert_number(42, 'decimal', 'binary')).to eq('101010')
    end
  end

  context 'octal to other systems' do
    it 'converts octal to decimal' do
      expect(convert_number('52', 'octal', 'decimal')).to eq('42')
    end

    it 'converts octal to binary' do
      expect(convert_number('52', 'octal', 'binary')).to eq('101010')
    end
  end

  context 'binary to other systems' do
    it 'converts binary to decimal' do
      expect(convert_number('101010', 'binary', 'decimal')).to eq('42')
    end

    it 'converts binary to octal' do
      expect(convert_number('101010', 'binary', 'octal')).to eq('52')
    end
  end

  context 'unsupported number systems' do
    it 'raises an error for unsupported `from` number system' do
      expect { convert_number(42, 'hexadecimal', 'decimal') }.to raise_error(ArgumentError, 'Unsupported from number system: hexadecimal')
    end

    it 'raises an error for unsupported `to` number system' do
      expect { convert_number(42, 'decimal', 'hexadecimal') }.to raise_error(ArgumentError, 'Unsupported to number system: hexadecimal')
    end
  end
end
