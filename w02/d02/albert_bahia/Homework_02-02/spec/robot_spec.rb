describe Robot do
  let(:ironman) { Robot.new('Ironman', 'Alpha' ) }

  it 'has a name' do
    expect(ironman.name).to eq('Ironman')
  end

  it 'has hp' do
    expect(ironman.hp).to eq(900)
  end

  it 'has strength' do
    expect(ironman.strength).to eq(3000)
  end

  it 'has a type' do
    expect(ironman.type).to eq('Alpha')
  end

  describe '#shoot' do
    it 'shoots at an evil bad guy' do
      let(:loki) { Mutant.new('Loki', 'Asgard' ) }
      ironman.shoot(loki)
    end
  end

  describe '#speak' do
    it 'speaks to a normal person' do
      expect(ironman.speak).to eq("Hello, I'm Ironman and I will defend you.")
    end
  end

  # describe '#transform' do
  #   it 'notifies evil bad guy that a transformation is happening' do
  #     expect(ironman.transform).to include("I'm transforming!  You better run now!")
  #   end
  # end
  #
  # describe '#yell' do
  #   it 'yells at the evil bad guy' do
  #     expect(hulk.yell).to include("SNNNARRLLL")
  #   end
  # end



  # describe '#introduce' do
  #   it 'introduces the character with name' do
  #     expect(natasha.introduce).to include(natasha.name)
  #   end
  # end

end
