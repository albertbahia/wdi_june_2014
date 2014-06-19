require_relative('../lib/human.rb')

describe Human do
  let(:piper) {Human.new('Piper', 32, ['Dandelion', 'College', 'Brain'], 'screwdriver')}

  it 'has a name' do
    expect(piper.name).to eq('Piper')
  end

  it 'has an age' do
    expect(piper.age).to eq(32)
  end


  it 'has nicknames' do
    expect(piper.nickname).to include(['Dandelion', 'College', 'Brain'])
  end

  it 'has an arsenal' do
    expect(piper.arsenal).to include('screwdriver')
  end


  describe '#stock_up' do
    it 'adds a weapon to your arsenal' do
      expect(piper.stock_up(weapon)).to include(weapon)
    end
  end

  describe '#view_arsenal' do
    it 'shows all weapons you have in your arsenal' do
      #....
    end
  end

  describe '#add_nicknames' do
    it 'adds new nicknames to your array' do
      #...
    end
  end

  describe '#warn' do
    it 'sends a warning message to someone' do
      #...
    end
  end

  describe '#fight' do
    it 'attempts to pick a fight with someone' do
      #...
    end
  end

end
