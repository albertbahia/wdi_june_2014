require_relative "../lib/being.rb"

describe Being do

    let(:rick) { Being.new("Rick", 100) }

    it "has a name" do
      expect(rick.name).to eq("Rick")
    end

    it "has a hp" do
      expect(rick.hp).to eq(100)
    end

  end

  describe "#eat" do

    let(:rick) { Being.new("Rick", 100) }

    it "eat adds one food parameter to array of foods" do
      expect(rick.eat("apple")).to eq(@foods_eaten = ["apple"])
    end
  end

  describe "#take_damage" do

    let(:rick) { Being.new("Rick", 100) }

    it "can take damage, reducing hp" do
      original_hp = rick.hp
      rick.take_damage(20)
      expect(rick.hp).to eq(original_hp - 20)
    end

    it "does not reduce the hp below 0" do
      original_hp = rick.hp
      rick.take_damage(original_hp + 700)
      expect(rick.hp).to eq(0)
    end

    it "does nothing when attack is a negative parameter" do
      original_hp = rick.hp
      rick.take_damage(-20)
      expect(rick.hp).to eq(original_hp)
    end


end
