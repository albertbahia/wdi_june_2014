require_relative('../lib/beast.rb')
require_relative('../lib/human.rb')
require_relative('../lib/army.rb')

describe Army do
  let(:north_members) do
    [
      Human.new('Jon Snow', 'Watch', 50),
      Human.new('Ned', 'Stark', 50),
      Human.new('Robb', 'Stark', 50),
      Beast.new('Ghost', 'Watch', 50)
    ]
  end
  let(:south_members) do
    [
      Human.new('Cersei', 'Lannister', 2),
      Human.new('Jaime', 'Lannister', 2),
      Human.new('Tyrian', 'Lannister', 2),
      Beast.new('Mountain', 'Clegane', 2)
    ]
  end
  let(:north) { Army.new('The North Army', north_members) }
  let(:south) { Army.new('The South Army', south_members) }

  it 'has a name' do

  end

  it 'has members' do
    north_members.each do |member|
      expect(north.members).to include(member)
    end
  end

  describe '#add_member' do
    it 'adds a new member to members' do
      arya = Human.new('Arya', 'Stark', 5)
      north.add_member(arya)
      expect(north.members).to include(arya)
    end
  end

  describe '#size' do
    it 'returns the size of the army' do
      expect(north.size).to eq(4)
    end
  end

  describe '#living_members' do
    jon = Human.new('Jon Snow', 'Watch', 50)
    ghost = Beast.new('Ghost', 'Watch', 50)
    ned = Human.new('Ned', 'Stark', 50)
    robb = Human.new('Robb', 'Stark', 50)

    ned.take_damage(ned.hp + 9000)
    robb.take_damage(robb.hp + 9000)

    dying_north = Army.new('The Dying North', [jon, ned, robb, ghost])

    it 'returns the living members of an army' do
      expect(dying_north.living_members).to include(jon, ghost)
      expect(dying_north.living_members).not_to include(ned, robb)
    end
  end

  describe '#clear_bodies' do
    jon = Human.new('Jon Snow', 'Watch', 50)
    ghost = Beast.new('Ghost', 'Watch', 50)
    ned = Human.new('Ned', 'Stark', 50)
    robb = Human.new('Robb', 'Stark', 50)

    ned.take_damage(ned.hp + 9000)
    robb.take_damage(robb.hp + 9000)

    dying_north = Army.new('The Dying North', [jon, ned, robb, ghost])

    it 'removes the dead members of the army' do
      dying_north.clear_bodies
      expect(dying_north.members).to eq(dying_north.living_members)
    end
  end

  describe '#defeated?' do
    jon = Human.new('Jon Snow', 'Watch', 5)
    ghost = Beast.new('Ghost', 'Watch', 5)
    ned = Human.new('Ned', 'Stark', 10)
    robb = Human.new('Robb', 'Stark', 10)

    ned.take_damage(ned.hp + 9000)
    robb.take_damage(robb.hp + 9000)

    dying_north = Army.new('The Dying North', [jon, ned, robb, ghost])
    dead_north = Army.new('The Dead North', [ned, robb])

    it 'returns true if no living members are present' do
      expect(dead_north.defeated?).to eq(true)
      dead_north.clear_bodies
      expect(dead_north.defeated?).to eq(true)
    end

    it 'returns false if living members are present' do
      expect(dying_north.defeated?).to eq(false)
      dying_north.clear_bodies
      expect(dying_north.defeated?).to eq(false)
    end
  end

  describe '#attack' do
    jon = Human.new('Jon Snow', 'Watch', 5)
    ghost = Beast.new('Ghost', 'Watch', 5)
    ned = Human.new('Ned', 'Stark', 10)
    robb = Human.new('Robb', 'Stark', 10)

    ned.take_damage(ned.hp + 9000)
    robb.take_damage(robb.hp + 9000)

    dying_north = Army.new('The Dying North Army', [jon, ned, robb, ghost])

    it 'makes a member attack a member of the other army once' do
      old_south_hp = south.members.collect(&:hp).reduce(:+)
      north.attack(south)
      new_south_hp = south.members.collect(&:hp).reduce(:+)
      expect(new_south_hp).to eq(old_south_hp - 50)
    end

    it 'only allows living members to attack' do
      10.times do
        old_south_hp = south.members.collect(&:hp).reduce(:+)
        dying_north.attack(south)
        new_south_hp = south.members.collect(&:hp).reduce(:+)
        expect(new_south_hp).to eq(old_south_hp - 5)
      end
    end

    it 'only attacks living members' do
      10.times do
        old_north_hp = dying_north.members.collect(&:hp).reduce(:+)
        south.attack(dying_north)
        new_north_hp = dying_north.members.collect(&:hp).reduce(:+)
        expect(new_north_hp).to eq(old_north_hp - 2)
      end
    end
  end

end
