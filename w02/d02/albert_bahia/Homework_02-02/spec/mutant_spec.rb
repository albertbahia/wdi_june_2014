describe Mutant do
  let(:hulk) { Mutant.new('Hulk', 'Monster Energy' ) }

  it 'has a name' do
    expect(hulk.name).to eq('Hulk')
  end

  it 'has hp' do
    expect(hulk.hp).to eq(4000)
  end

  it 'has strength' do
    expect(hulk.strength).to eq(5000)
  end

  it 'has a laboratory' do
    expect(hulk.laboratory).to eq('Monster Energy')
  end

  describe '#transform' do
    it 'notifies evil bad guy that a transformation is happening' do
      expect(hulk.transform).to include("I'm transforming!  You better run now!")
    end
  end

  describe '#yell' do
    it 'yells at the evil bad guy' do
      expect(hulk.yell).to include("SNNNARRLLL")
    end
  end



  # describe '#introduce' do
  #   it 'introduces the character with name' do
  #     expect(natasha.introduce).to include(natasha.name)
  #   end
  # end

end
