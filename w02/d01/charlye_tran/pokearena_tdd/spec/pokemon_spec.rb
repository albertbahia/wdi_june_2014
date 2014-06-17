require_relative('../lib/pokemon.rb')

describe Pokemon do
  describe("#hp") do

    it("should return the hp value") do
      weedle = Pokemon.new("Weedle", 005, "Bird", 100, 500, 10, 50)
      expect(weedle.hp).to(eq(100))
    end

    it("should return 100 when HP is > max") do
      chorizord = Pokemon.new("chorizord", 005, "Bird", 150, 500, 10, 50)
      expect(chorizord.hp).to(eq(100))
    end

    it("should return 0 when HP is negative") do
      pikachu = Pokemon.new("Pikachu",005, "Bird", -5, 500, 10, 50)
      expect(pikachu.hp).to(eq(0))
    end
  end

  describe("#list_stats") do

  let(:pikachu) { Pokemon.new("Pikachu",005, "Bird", -5, 500, 10, 50) }

  it("should return a string") do
  expect(pikachu.list_stats.class).to(eq(String))
  end

  it("should list their stats including name, id and etc.") do
    stats = ["Pikachu", 005, "Bird", -5, 500, 10, 50]
      stats.each do |stat|
        expect(pikachu.list_stats.include?(stat.to_s)).to(eq(true))
      end
  end
end
end
