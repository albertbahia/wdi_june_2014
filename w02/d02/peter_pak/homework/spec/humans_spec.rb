require_relative '../lib/humans.rb'


describe Human do

  let(:zack) { Human.new('Zack Morris', "Student", "Time out!")}

  it 'has a name' do
    expect(zack.name).to eq('Zack Morris')
  end

  it 'has a role' do
    expect(zack.role).to eq('Student')
  end

  it 'has a catchphrase' do
    expect(zack.catchphrase).to eq('Time out!')
  end

  it 'has a school' do
    expect(zack.school).to eq('Bayside High School')
  end


  describe '#attend_school' do
    it 'tells us if they attended school today' do
      expect(zack.attend_school).to eq(true)
    end
  end
end
