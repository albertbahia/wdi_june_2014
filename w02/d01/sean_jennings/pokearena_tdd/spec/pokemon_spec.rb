require_relative('../lib/pokemon.rb')

describe Pokemon do
  describe "#hp" do
    it("should return the hp value") do
      Joe = Pokemon.new("Joe",1,:idk,2,3,4,5)
      expect(Joe.hp).to eq(2)
    end
    it("should return 100 when HP is greater than the max") do
      Jim = Pokemon.new("Joe",2,:idk,120,6,8,9)
      expect(Jim.hp).to eq(100)
    end
    it("should return 0 when HP is negative") do
      John = Pokemon.new("John",3,:idk,-5,32,3,5)
      expect(John.hp).to eq(0)
    end
  end
end
