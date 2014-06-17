require_relative('../lib/pokemon.rb')

describe(Pokemon) do
  describe("#hp") do
    it("should return the HP value ") do
      pikachorb = Pokemon.new("Pikachorb", 5, :electric, 50, 50, 55, 10)
      expect(pikachorb.hp).to(eq(50))
    end
    it("should return 100 HP when HP is greater than the max") do
      chorizord = Pokemon.new("Chorizord", 1, :water, 150, 10, 10, 10)
      expect(chorizord.hp).to(eq(100))
    end
    it("should return 0 when hp is negative") do
      squortle = Pokemon.new("Squortle", 1, :water, -10, 10, 10, 10)
      expect(squortle.hp).to(eq(0))
    end
  end


  describe("#list_stats") do
    let(:pikachorb) { Pokemon.new("Pikachorb", 5, :electric, 50, 50, 55, 10) }

    it("should list stats, including name, id, poketype, hp, attack, defense, speed") do
      stats = ["Pikachorb", 5, :electric, 50, 50, 55, 10]
      stats.each do |stat|
        expect(pikachorb.list_stats.include?(stat.to_s)).to(eq(true))
      end
    end
  end
end
