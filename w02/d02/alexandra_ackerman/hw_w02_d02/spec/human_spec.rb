require_relative "../lib/human.rb"

describe Human do

  let(:glenn) { Human.new("Glenn", 90, 29) }

  it "has a name" do
    expect(glenn.name).to eq("Glenn")
  end

  it "has a hp" do
    expect(glenn.hp).to eq(90)
  end

  it "has an age" do
    expect(glenn.age).to eq(29)
  end

  describe "#eat" do

  let(:glenn) { Human.new("Glenn", 90, 29) }

    it "eat adds one food parameter to array of foods" do
      expect(glenn.eat("banana")).to eq(@foods_eaten = ["banana"])
    end
  end

  describe "#take_damage" do

  let(:glenn) { Human.new("Glenn", 90, 29) }

    it "can take damage, reducing hp" do
      original_hp = glenn.hp
      glenn.take_damage(20)
      expect(glenn.hp).to eq(original_hp - 20)
    end

    it "does not reduce the hp below 0" do
      original_hp = glenn.hp
      glenn.take_damage(original_hp + 700)
      expect(glenn.hp).to eq(0)
    end

    it "does nothing when attack is a negative parameter" do
      original_hp = glenn.hp
      glenn.take_damage(-20)
      expect(glenn.hp).to eq(original_hp)
    end
  end

  describe "#taunt" do

    let(:glenn) { Human.new("Glenn", 90, 29) }

    it "taunts another being" do
      expect(glenn.taunt).to include("Come and get it!")
    end
  end

  describe "#cry_for_help" do

    let(:glenn) { Human.new("Glenn", 90, 29) }

    it "cries for help" do
      expect(glenn.cry_for_help).to include("Help! I need help!")
    end
  end

end
