require_relative '../lib/pokemon.rb'

describe Pokemon do
  describe("#hp") do
    it("should return the hp value") do
      pikachorb = Pokemon.new("pikachorb", 1, :water, 50, 30, 40, 50)
      expect(pikachorb.hp).to(eq(50))
    end
    it("should return 100 when HP is greater than 100") do
      chorizord = Pokemon.new("chorizord", 1, :water, 150, 30, 40, 50)
      expect(chorizord.hp).to(eq(100))
    end
    it("should return 0 when HP is negative") do
      squortle = Pokemon.new("squortle", 1, :water, -10, 30, 40, 50)
      expect(squortle.hp).to(eq(0))
    end
  end

  describe("#list_stats") do
    let(:pikachorb) { Pokemon.new("pikachorb", 1, :water, 50, 30, 40, 20) }

    it("should list stats, including name, id, poketype, hp, poketype, hp, attack, defense, and speed") do
      stats = ["pikachorb", 1, :water, 50, 30, 40, 20]
      stats.each do |stat|
        expect(pikachorb.list_stats.include?(stat.to_s)).to(eq(true))
      end
    end
  end

end
