require_relative('../lib/pokemon.rb')

describe(Pokemon) do

  describe("#hp") do
    it("should return the hp value") do
      pikachorb = Pokemon.new("Pikachorb", 1, :Electricity, 50, 23, 14, 13)
      expect(pikachorb.hp).to(eq(50))
    end
    it("should return 100 when HP is greater than the max") do
      chorizord = Pokemon.new("Chorizord", 2, :Fire, 150, 10, 10, 10)
      expect(chorizord.hp).to(eq(100))
    end
    it("should return 0 when HP is negative") do
      bulbasorb = Pokemon.new("Bulbasorb", 3, :Grass, -10, 10, 10, 10)
      expect(bulbasorb.hp).to(eq(0))
    end
  end

  describe("#list_stats") do
    let(:p) { Pokemon.new("Pikachorb", 1, :water, 50, 10, 20, 30)}

    it("should return a string") do
      expect(p.list_stats.class).to(eq(String))
    end

    it("should list stats, including name, id, poketype, hp, attack, defense and speed") do
      stats = ["Pikachorb", 1, :water, 50, 10, 20, 30]
      stats.each do |stat|
        expect(p.list_stats.include?(stat.to_s)).to(eq(true))
      end
    end
  end
end
