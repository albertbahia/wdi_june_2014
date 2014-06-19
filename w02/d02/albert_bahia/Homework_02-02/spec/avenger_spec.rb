describe Avenger do
  let(:hawkeye) { Avenger.new('Hawkeye', 100, 200) }

  it 'has a name' do
    expect(hawkeye.name).to eq('Hawkeye')
  end

  it 'has hp' do
    expect(hawkeye.hp).to eq(100)
  end

  it 'has strength' do
    expect(hawkeye.strength).to eq(200)
  end

  describe '#introduce' do
    it 'introduces the character with name' do
      expect(hawkeye.introduce).to include(hawkeye.name)
    end
  end

end
