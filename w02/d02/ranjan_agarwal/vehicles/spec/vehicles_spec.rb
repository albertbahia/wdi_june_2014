require_relative('../lib/vehicles.rb')
require_relative('../lib/car.rb')
require_relative('../lib/plane.rb')

describe Vehicle do
  let(:lotus) { Vehicle.new('Lotus', true, 5)}
  it 'has a company' do
    expect(lotus.company).to eq('Lotus')
  end
  it 'engine is on' do
    expect(lotus.on).to eq(true)
  end
  it 'has a max seats' do
    expect(lotus.seats).to eq(5)
  end

  describe '#turn_off' do
    it 'turns the engine off' do
      lotus.turn_off
      expect(lotus.on).to eq(false)
    end
  end
end
