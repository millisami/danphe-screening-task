require_relative '../problem_1'

RSpec.describe '#find_greatest' do
  it 'returns the greatest of three numbers' do
    expect(find_greatest(20, 30, 80)).to eq(80)
    expect(find_greatest(60, 40, 20)).to eq(60)
    expect(find_greatest(30, 35, 30)).to eq(35)
  end

  context 'when all the numbers are equal' do
    it 'returns that number' do
      expect(find_greatest(50, 50, 50)).to eq(50)
    end
  end

  context 'when two numbers are equal and the other is largest' do
    it 'returns the largest one' do
      expect(find_greatest(30, 30, 40)).to eq(40)
      expect(find_greatest(50, 10, 50)).to eq(50)
    end
  end

  context 'with negative numbers' do
    it 'returns the greatest one' do
      expect(find_greatest(-10, -20, -30)).to eq(-10)
      expect(find_greatest(-40, -10, -20)).to eq(-10)
    end
  end

  context 'with a mix of positive and negative numbers' do
    it 'returns the greatest number' do
      expect(find_greatest(-20, 0, 13)).to eq(13)
      expect(find_greatest(15, -15, 10)).to eq(15)
    end
  end
end
