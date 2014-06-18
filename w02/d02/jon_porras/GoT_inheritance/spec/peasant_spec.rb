require_relative('../lib/peasant.rb')

describe Peasant do
  let(:piers) { Peasant.new('Piers', 'Piers Parsnip Farm') }

  it 'has a name' do
    expect(piers.name).to eq('Piers')
  end

  it 'has a farm name' do
    expect(piers.farm_name).to eq('Piers Parsnip Farm')
  end

  it 'doesn\'t have a house' do
    expect(piers.house).to eq(nil)
    # house should always be nil
  end

  it 'always has a strength of 1' do
    expect(piers.strength).to eq(1)
  end

  it 'always has hp of 5' do
    expect(piers.hp).to eq(5)
  end

  describe '#introduce' do
    it 'introduces the character with name and farm' do
      expect(piers.introduce).to include(piers.name)
      expect(piers.introduce).to include(piers.farm_name)
    end
      it 'includes the fact that it is just a humble peasant in its introduction' do
      expect(piers.introduce).to include("humble peasant")
      end
 end

end
