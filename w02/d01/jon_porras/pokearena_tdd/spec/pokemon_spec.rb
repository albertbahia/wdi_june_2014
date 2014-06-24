require_relative('../lib/pokemon.rb')

describe(Pokemon) do
  describe("#hp") do
    it("should return the hp value") do
      pikachu = Pokemon.new("Pikachu", 003, "electric", 80, 80, 80, 80)
      expect(pikachu.hp).to(eq(80))
    end
    it("should return 100 when HP is greater than the max") do
      chorizord = Pokemon.new("chorizord", 003, "electric", 150, 80, 80, 80)
      expect(chorizord.hp).to(eq(100))
    end
    it("should return 0 when HP is negative") do
      foozard = Pokemon.new("foozard", 003, "electric", -5, 80, 80, 80)
      expect(foozard.hp).to(eq(0))
    end
  end

  describe("#list_stats") do

    let(:pikachu) {Pokemon.new("Pikachu", 003, "electric", 80, 80, 80, 80)}

    it("should return a string") do
      expect(pikachu.list_stats.class).to(eq(String))
    end

    it("should list stats, including name, id, poketype, hp, attack, defense") do
    stats = ["Pikachu", 003, "electric", 80, 80, 80, 80]
      stats.each do |stat|
      expect(pikachu.list_stats.include?(stat.to_s)).to(eq(true))
      end
    end
  end
end
