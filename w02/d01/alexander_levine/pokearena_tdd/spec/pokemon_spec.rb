require_relative '../lib/pokemon.rb'

describe Pokemon do
  describe("#hp") do
    it("should return the hp value") do
      pikachu = Pokemon.new("pikachu", 0, :lighning, 50, 20, 20, 20)
      expect(pikachu.hp).to eq(50)
    end
    it("shound return 100 when HP greater than the max") do
      squirtle = Pokemon.new("squirtle", 1, :water, 105, 20, 20, 20)
      expect(squirtle.hp).to eq(100)
    end
    it("should return 0 when hp is negative") do
      pidgey = Pokemon.new("pidgey", 2, :flying, -10, 20, 20, 20)
      expect(pidgey.hp).to eq(0)
    end
  end

  describe("#list_stats") do
    let(:pokachu) { Pokemon.new("Pikachu", 1, :lightning, 50, 21, 19, 20) }

    it("should return a string") do
      expect(pikachu,list_stats.class).to eq String
    end

    it("should list stats, including name, id, poketype, hp, attack, defense, speed")
      stats = ["Pikachu", 0, :lighning, 50, 21, 19, 20]
      stats.each do |stat|
        expect(pikachu.list_stats.include?(stats.to_s)).to eq true
      end
    end
  end

end
