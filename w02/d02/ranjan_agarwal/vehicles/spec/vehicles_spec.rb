require_relative('../lib/vehicles.rb')
require_relative('../lib/car.rb')
require_relative('../lib/plane.rb')

describe Car do
  let(:lexus) { Car.new('Lexus', true, 5)}
  it 'has a company' do
    expect(lexus.company).to eq('Lexus')
  end
  it 'engine is on' do
    expect(lexus.on).to eq(true)
  end
  it 'has a max seats' do
    expect(lexus.seats).to eq(5)
  end

  describe '#turn_off' do
    it 'turns on when ignited off' do
      expect(lexus.on).to eq("Turn off")
    end
  end
end

describe Plane do
  let(:boeing) { Plane.new('Boeing', true, 100)}
  it 'has a company' do
    expect(boeing.company).to eq('Boeing')
  end
  it 'engine is on' do
    expect(boeing.on).to eq(true)
  end
  it 'has a max seats' do
    expect(boeing.seats).to eq(100)
  end

  describe '#turn_off' do
    it 'turns off when ignited on' do
      expect(boeing.on).to eq("Turn off")
    end
  end
end
