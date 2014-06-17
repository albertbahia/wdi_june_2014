require_relative('../lib/pokemon.rb')

describe(Pokemon) do
  describe("#hp") do
    it("should return the hp value ") do
      pika = Pokemon.new("Pikachu", "026", "Electric", 100, 50, 50, 50)
      expect(pika.hp).to(eq(100))
    end
    it("should return 100 when HP is greater than max")do
      pika_1 = Pokemon.new("Pikachu", "026", "Electric", 150, 50, 50, 50)
      expect(pika_1.hp).to(eq(100))
    end
    it("Should return 0 when hp is negative")do
      pika_2 = Pokemon.new("Pikachu", "026", "Electric", -50, 50, 50, 50)
      expect(pika_2.hp).to(eq(0))
    end
  end
  describe("#list_stats") do
    let(:pika) {Pokemon.new("Pikachu", "026", "Electric", 100, 30, 40, 50)}
    it("should return a string") do
      expect(pika.list_stats.class).to(eq(String))
    end
    it("should list stats, including (name, id, poketype, hp, attack, defense, speed") do
      stats = ["Pikachu", "026", "Electric", 100, 30, 40, 50]
      stats.each do |stat|
          expect(pika.list_stats.include?(stat.to_s)).to(eq(true))
      end
    end
  end
end
