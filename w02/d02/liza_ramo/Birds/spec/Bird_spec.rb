
require_relative '../lib/Bird.rb'

describe Bird do
  let(:snoopy) { Bird.new("Snoopy", 13, "tropics", 7)}

  it 'has a name' do
    expect(snoopy.name).to eq('Snoopy')
  end

  it 'has an age' do
    expect(snoopy.age).to eq(13)
  end

  it 'has a location' do
    expect(snoopy.location).to eq('tropics')
  end

  it 'has a speed' do
    expect(snoopy.speed).to eq(7)
  end


  describe '#get_food' do
    it 'got food' do
      expect(snoopy.get_food).to eq(true)
    end
  end

end
