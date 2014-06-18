require_relative '../lib/superman.rb'

describe Superman do
  let(:clark) { Superman.new("Clark Kent", 30, "Smallville, KS", 100000) }
  it 'has a name' do
    expect(clark.name).to eq("Clark Kent")
  end

  it 'has an age' do
    expect(clark.age).to eq(30)
  end

  it 'has a hometown' do
    expect(clark.hometown).to eq("Smallville, KS")
  end

  it 'has a strength' do
    expect(clark.strength).to eq(100000)
  end

  it 'has a speed' do
    expect(clark.speed).to eq(50000)
  end

  describe '#alive?' do
      it 'returns true when hp is greater than 0' do
        expect(clark.alive?).to eq(true)
      end
  end

  describe '#fly' do
    it 'should return Up Up and Away!' do
      expect(clark.fly).to eq("Up Up and Away!")
    end
  end

  describe '#x_ray_vision' do
    it 'should return I see through everything!' do
      expect(clark.x_ray_vision).to eq("I see through you.")
    end
  end

end
