require_relative('../lib/peasant.rb')

describe Peasant do
  let(:piers) { Peasant.new('Piers', 'Piers Parsnip Farm') }

  it 'has a name' do
  end

  it 'has a farm name' do
  end

  it 'doesn\'t have a house' do
    # house should be nil
  end

  it 'always has a strength of 1' do
  end

  it 'always has hp of 5' do
  end

  describe '#introduce' do
    it 'introduces the character with name and farm' do
    end
    it 'includes the fact that it is just a humble peasant in its introduction' do
    end
  end

end
