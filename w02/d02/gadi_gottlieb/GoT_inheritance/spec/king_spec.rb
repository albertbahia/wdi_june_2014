require_relative('../lib/king.rb')

describe King do
  let(:ned) { King.new('Ned', 'Stark', 'North') }

  it 'has a name' do
    expect(ned.name).to eq("Ned")
  end

  it 'has a house' do
    expect(ned.house).to eq("Stark")
  end

  it 'has a realm (aka kingdom)' do
    expect(ned.realm).to eq("North")
  end

  it 'has a default strength of 200' do
    expect(ned.strength).to eq(200)
  end

  it 'has a default hp of 1000' do
    expect(ned.hp).to eq(1000)
  end

  describe '#introduce' do
    it 'introduces the king with name, house, and realm' do
      expect(ned.introduce).to include(ned.name)
      expect(ned.introduce).to include(ned.house)
      expect(ned.introduce).to include(ned.realm)
    end
    it 'includes the fact that it is an noble king' do
      expect(ned.introduce).to include("I am a noble king.")
    end
  end

end
