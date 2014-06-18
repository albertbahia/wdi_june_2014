require_relative('../lib/human.rb')
require_relative('../lib/being.rb')

describe Human do
  let(:joffrey) { Human.new('Joffrey', 'Lannister', 2) }
  it 'has a name' do
    expect(joffrey.name).to eq('Joffrey')
  end

  it 'has a house' do
    expect(joffrey.house).to eq('Lannister')
  end

  it 'has a strength' do
    expect(joffrey.strength).to eq(2)
  end

  it 'has hp' do
    expect(joffrey.hp).to eq(200) # Initialized to 20
  end

  describe '#introduce' do
    it 'introduces the character with name and house' do
      expect(joffrey.introduce).to include(joffrey.name)
      expect(joffrey.introduce).to include(joffrey.house)
    end
  end

  describe '#take_damage' do
    it 'reduces the hp' do
      original_hp = joffrey.hp
      joffrey.take_damage(20)
      expect(joffrey.hp).to eq(original_hp - 20)
    end

    it 'does not reduce hp below 0' do
      original_hp = joffrey.hp
      joffrey.take_damage(original_hp + 9000) # Making sure to kill Joffrey
      expect(joffrey.hp).to eq(0)
    end

    it 'does nothing when passed a negative parameter' do
      original_hp = joffrey.hp
      joffrey.take_damage(-10)
      expect(joffrey.hp).to eq(original_hp)
    end
  end

  describe '#attack' do
    it 'does damage to the other' do
      ned = Human.new('Ned', 'Stark', 40)
      original_hp = ned.hp
      joffrey.attack(ned)
      expect(ned.hp).to eq(original_hp - joffrey.strength)
    end
  end

  describe '#alive?' do
    it 'returns true when hp is greater than 0' do
      expect(joffrey.alive?).to eq(true)
    end

    it 'returns false when hp is 0' do
      joffrey.take_damage(joffrey.hp + 9000) # Making sure to kill Joffrey
      expect(joffrey.alive?).to eq(false)
    end
  end
end
