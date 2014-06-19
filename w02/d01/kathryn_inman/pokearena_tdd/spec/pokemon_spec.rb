require_relative '../lib/pokemon.rb'

describe Pokemon do
  describe "#hp" do
    it "should return the hp value" do
      plusle = Pokemon.new("Plusle", 122, "Electric", 50, 10, 20, 4)
      expect(plusle.hp).to(eq(50))
    end
    it "should return 100hp when hp > 100" do
      minun = Pokemon.new("Minun", 122, "Electric", 150, 10, 20, 4)
      expect(minun.hp).to(eq(100))
    end
    it "should return 0 when hp are negative" do
      eevee = Pokemon.new("Eevee", 123, "Normal", -3, 20, 20, 5)
      expect(eevee.hp).to(eq(0))
    end
  end


  describe "#list_stats"do
   let(:plusle) {Pokemon.new("Plusle", 122, "Electric", 50, 10, 20, 4)}

    it "should return a string" do
      expect(plusle.list_stats.class).to(eq(String))
    end

    it "should list stats" do
      stats = ["Plusle", 122, "Electric", 50, 10, 20, 4]
      stats.each do |stat|
        expect(plusle.list_stats.include?(stat.to_s)).to(eq(true))
    end
    end
  end
end
