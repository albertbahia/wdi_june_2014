require_relative('../lib/being.rb')
require_relative('../lib/human.rb')

describe Human do
  let(:bob) { Human.new('Bob', 'Tully', 2) }
  it 'has a name' do
    expect(bob.name).to eq('Bob')
  end

  it 'has a house' do
    expect(bob.house).to eq('Tully')
  end

  it 'has a strength' do
    expect(bob.strength).to eq(2)
  end

  it 'has hp' do
    expect(bob.hp).to eq(200) # Initialized to 200
  end

  describe '#introduce' do
    it 'introduces the character with name and house' do
      expect(bob.introduce).to include(bob.name)
      expect(bob.introduce).to include(bob.house)
    end
  end

  describe '#take_damage' do
    it 'reduces the hp' do
      original_hp = bob.hp
      bob.take_damage(20)
      expect(bob.hp).to eq(original_hp - 20)
    end

    it 'does not reduce hp below 0' do
      original_hp = bob.hp
      bob.take_damage(original_hp + 9000) # Making sure to kill Bob
      expect(bob.hp).to eq(0)
    end

    it 'does nothing when passed a negative parameter' do
      original_hp = bob.hp
      bob.take_damage(-10)
      expect(bob.hp).to eq(original_hp)
    end
  end

  describe '#attack' do
    it 'does damage to the other' do
      ned = Human.new('Ned', 'Stark', 40)
      original_hp = ned.hp
      bob.attack(ned)
      expect(ned.hp).to eq(original_hp - bob.strength)
    end
  end

  describe '#alive?' do
    it 'returns true when hp is greater than 0' do
      expect(bob.alive?).to eq(true)
    end

    it 'returns false when hp is 0' do
      bob.take_damage(bob.hp + 9000) # Making sure to kill Joffrey
      expect(bob.alive?).to eq(false)
    end
  end
end
