require_relative('../lib/pokemon.rb')

describe(Pokemon) do
  describe("#hp") do
    it("should return the hp value") do
      pikachu = Pokemon.new("Pikachu", 25, :electric, 50, 10, 10, 10)
      expect(pikachu.hp).to(eq(50))
    end
    it("should return 100 when HP greater than the max") do
      charizard = Pokemon.new("charizard", 9, :fire, 150, 60, 40, 80)
      expect(charizard.hp).to(eq(100))
    end
    it("should return 0 when HP is negative") do
      squirtle = Pokemon.new("squirtle", 25, :electric, -10, 10, 10, 10)
      expect(squirtle.hp).to(eq(0))
    end
  end

  describe("#list_stats") do
    let(:pikachu) { Pokemon.new("Pikachu", 25, :electric, 50, 10, 10, 10)

    it("should return a string") do
        expect(pikachu.list_stats.class).to(eq(String))
    end

    it ("should list stats, including name, id, poketype, hp, attack, defense, speed.") do
      stats = ["Pikachu", 25, :electric, 50, 10, 10, 10]
      stats.each do |stat|
        expect(pikachu.list_stats.include?(stat.to_s)).to(eq(true))
      end
    end
  end

end
  # it("should respect tautologies") do
  #   expect(true).to eq(true)
  # end
  # it("should have HP") do
  # end
