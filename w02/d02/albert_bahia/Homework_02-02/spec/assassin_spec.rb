describe Assassin do
  let(:natasha) { Assassin.new('Natasha', 'Russia' ) }

  it 'has a name' do
    expect(natasha.name).to eq('Natasha')
  end

  it 'has hp' do
    expect(natasha.hp).to eq(70)
  end

  it 'has strength' do
    expect(natasha.strength).to eq(150)
  end

  it 'has a clan' do
    expect(natasha.clan).to eq('Russia')
  end

  describe '#run' do
    it 'runs away from the missed target' do
      expect(natasha.run).to include("I missed my target and will run away.")
    end
  end

  describe '#stab' do
    it 'will notify target that it shall get stabbed'
      expect(natasha.stab).to include("I stab you evil bad guy.")
    end
  end



  # describe '#introduce' do
  #   it 'introduces the character with name' do
  #     expect(natasha.introduce).to include(natasha.name)
  #   end
  # end

end
