require_relative('../lib/pokemon.rb')

describe Pokemon do
  describe("#hp") do
    it("should return the hp value") do
      pikachorb = Pokemon.new("Pikachorb", 1, :water, 50, 10, 10, 10)
      expect(pikachorb.hp).to(eq(50))
    end
    it("should return 100 when HP is greater than the max") do
      chorizord = Pokemon.new("Chorizord", 1, :water, 150, 10, 10, 10)
      expect(chorizord.hp).to(eq(100))
    end
    it("should return 0 when HP is negative") do
      squirble = Pokemon.new("Squirble", 1, :water, -30, 10, 10, 10)
      expect(squirble.hp).to(eq(0))
    end
  end
  describe("#list_stats") do
  let(:pikachorb) { Pokemon.new("Pikachorb", 1, :water, 50, 10, 11, 1704)}

    it("should return a string") do
      expect(pikachorb.list_stats.class).to(eq(String))
    end

    it("should return a list of stats including name, id, pokeytype, hp, attack, defense, speed") do
      stats = ["Pikachorb", 1, :water, 50, 10, 11, 1704]
      stats.each do |stat|
        expect(pikachorb.list_stats.include?(stat.to_s)).to(eq(true))
      end

    end
  end

end
