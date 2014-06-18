require_relative "../lib/walker.rb"
require_relative "../lib/human.rb"

describe Walker do

  let(:lori) { Walker.new("Lori", 20, 2) }

  it "has a name" do
    expect(lori.name).to eq("Lori")
  end

  it "has a hp" do
    expect(lori.hp).to eq(20)
  end

  it "has a number of limbs" do
    expect(lori.limbs).to eq(2)
  end

  describe "#eat" do

  let(:lori) { Walker.new("Lori", 20, 2) }

    it "eat adds one food parameter to array of foods" do
      expect(lori.eat("banana")).to eq(@foods_eaten = ["banana"])
    end
  end

  describe "#take_damage" do

  let(:lori) { Walker.new("Lori", 20, 2) }

    it "can take damage, reducing hp" do
      original_hp = lori.hp
      lori.take_damage(20)
      expect(lori.hp).to eq(original_hp - 20)
    end

    it "does not reduce the hp below 0" do
      original_hp = lori.hp
      lori.take_damage(original_hp + 700)
      expect(lori.hp).to eq(0)
    end

    it "does nothing when attack is a negative parameter" do
      original_hp = lori.hp
      lori.take_damage(-20)
      expect(lori.hp).to eq(original_hp)
    end
  end

  describe "#growl" do

    let(:lori) { Walker.new("Lori", 20, 2) }

    it "growls" do
      expect(lori.growl).to eq("AHHHHHHHGGGGGGG!")
    end

  end

  describe "#lose_limb" do

    let(:lori) { Walker.new("Lori", 20, 2)}

    it "subtracts limb by 1" do
      expect(lori.lose_limb).to eq(1)
    end
  end

end
