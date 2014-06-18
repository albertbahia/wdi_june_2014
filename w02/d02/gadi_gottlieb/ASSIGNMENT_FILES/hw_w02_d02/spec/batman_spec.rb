require_relative '../lib/batman.rb'

describe Batman do
  let(:bruce) { Batman.new("Bruce Wayne", 30, "Gotham City", 10000) }

    it 'has a name' do
      expect(bruce.name).to eq("Bruce Wayne")
    end

    it 'has an age' do
      expect(bruce.age).to eq(30)
    end

    it 'has a hometown' do
      expect(bruce.hometown).to eq("Gotham City")
    end

    it 'has a strength' do
      expect(bruce.strength).to eq(10000)
    end

    it 'has defense' do
      expect(bruce.defense).to eq(1000)
    end

    describe '#alive?' do
      it 'returns true when hp is greater than 0' do
        expect(bruce.alive?).to eq(true)
      end
    end

    describe '#add_gadgets' do
      it "should add new item for batman's use" do
        expect(bruce.add_gadgets(item)).to eq("bat stars")
      end
    end

    describe '#sixth_sense' do
      it "should say I can see what is coming a mile away." do
        expect(bruce.sixth_sense).to eq("I can see what is coming a mile away.")
      end
    end
  end
