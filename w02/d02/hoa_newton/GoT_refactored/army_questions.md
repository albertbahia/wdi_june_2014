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

I don't understand those codes 