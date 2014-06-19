require_relative('../lib/pokemon.rb')

describe Pokemon do

  describe("#hp") do
    it("should return the hp value") do
      picchu = Pokemon.new("Picchu", 001, :electric, 85, 10, 23, 67)
      expect(picchu.hp.to_i).to(eq(85))
    end
    it("should not be more than 100") do
      picchu = Pokemon.new("Picchu", 001, :electric, 85, 10, 23, 67)
      chorizord = Pokemon.new("chorizord", 023, :grass, 105, 50, 30, 20)
      expect(chorizord.hp.to_i).to(eq(100))
    end
    it("should return 0 when HP is negative") do
      picchu = Pokemon.new("Picchu", 001, :electric, -5, 10, 23, 67)
      expect(picchu.hp.to_i).to(eq(0))
    end
  end

  describe("#list_stats") do
    #describe("should list stats name, id, poketype, hp, attack, defense, speed")
      let(:picchu) {Pokemon.new("Picchu", 001, :electric, 85, 10, 23, 67)}

      it("should return a string") do
        expect(picchu.list_stats.class).to(eq(String))
      end

      it("should list stats, including name, id, poketype, hp, attack, defense, speed")
        stats = ["Picchu", 001, :electric, 85, 10, 23, 67]
        stats.each do |stat|
        expect(picchu.list_stats.include?(stat.to_s)).to(eq(true))
        end
      end
  end

end
