require_relative('../lib/beast.rb')

#ghost = Beast.new('Ghost', 'Direwolf', 10)
describe Beast do
  let(:ghost) { Beast.new('Ghost', 'Direwolf', 10) }

  it 'has a name' do
    expect(ghost.name).to eq('Ghost')
  end

  it 'has a species' do
    expect(ghost.species).to eq('Direwolf')
  end

  it 'has a strength' do
    expect(ghost.strength).to eq(10)
  end

  it 'has hp' do
    expect(ghost.hp).to eq(100) # Initialized to 100
  end
end

  describe '#take_damage' do
    let(:ghost) { Beast.new('Ghost', 'Direwolf', 10) }

    it 'reduces the hp' do
      original_hp = ghost.hp
      ghost.take_damage(20)
      expect(ghost.hp).to eq(original_hp - 20)
    end

    it 'does not reduce hp below 0' do
      original_hp = ghost.hp
      ghost.take_damage(original_hp + 9000) # Making sure to kill Ghost
      expect(ghost.hp).to eq(0)
    end

    it 'does nothing when passed a negative parameter' do
      original_hp = ghost.hp
      ghost.take_damage(-10)
      expect(ghost.hp).to eq(original_hp)
    end
  end #For 'describe' section

  describe '#attack' do
    let(:ghost) { Beast.new('Ghost', 'Direwolf', 10) }

    it 'does damage to the other' do
      draco= Beast.new('Draco', 'Dragon', 30)
      original_hp = draco.hp
      ghost.attack(draco)
      expect(draco.hp).to eq(original_hp - ghost.strength)
    end
  end #For 'describe' section

  describe '#alive?' do
    let(:ghost) { Beast.new('Ghost', 'Direwolf', 10) }

    it 'returns true when hp is greater than 0' do
      expect(ghost.alive?).to eq(true)
    end

    it 'returns false when hp is 0' do
      ghost.take_damage(ghost.hp + 9000) # Making sure to kill Ghost
      expect(ghost.alive?).to eq(false)
    end
  end
