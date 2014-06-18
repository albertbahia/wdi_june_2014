require_relative '../lib/person.rb'

describe Person do
  let(:gadi) { Person.new("Gadi", 24, "Edison, NJ", 10) }
    it 'has a name' do
      expect(gadi.name).to eq("Gadi")
    end

    it 'has an age' do
      expect(gadi.age).to eq(24)
    end

    it 'has a hometown' do
      expect(gadi.hometown).to eq("Edison, NJ")
    end

    it 'has a strength' do
      expect(gadi.strength).to eq(10)
    end
    
  describe '#alive?' do
    it 'returns true when hp is greater than 0' do
      expect(gadi.alive?).to eq(true)
    end
  end
end
