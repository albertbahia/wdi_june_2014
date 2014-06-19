require_relative('../lib/class_apple.rb')

describe Apple do
  let(:fuji) { Apple.new('Fuji', 10, 5) }
  
  it 'has a name' do
    expect(fuji.name).to eq('Fuji')
  end

  it 'has a size' do
    expect(fuji.size).to eq(10)
  end

  it 'has a deliciousness rating' do
    expect(fuji.deliciousness).to eq(5)
  end
end

  describe '#gets_eaten' do
  let(:fuji) { Apple.new('Fuji', 10, 5) }
  
    it 'gets smaller' do
      original_size = fuji.size
      fuji.gets_eaten(1)
      expect(fuji.size).to eq(original_size - 1)
    end
end
