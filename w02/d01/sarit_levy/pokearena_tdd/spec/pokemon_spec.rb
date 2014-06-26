require_relative('../lib/pokemon.rb')

# describe(Pokemon) do  ##this version of the test was written before the one we wrote on the bottom as an example
#   it("should respect tautologies") do
#     expect(true).to eq (true)
#   end
# end

describe(Pokemon) do
  describe("#hp") do
    it("should return the hp value") do
      pickachorb = Pokemon.new("Pikachorb", 1, :water, 50, 10, 10, 10)  ##pickachorb is one of our program's pokemon objects (not really but just as an example)
      expect(pikachord.hp).to(eq(50))
    end
    it("should return 100 when HP is greater than the max") do
      chorizord = Pokemon.new("Chorizord", 1, :water, 150, 10, 10, 10)
      expect(chorizord.hp).to(eq(100))
    end
    it("should return 0 when HP is negative") do
      cucumber = Pokemon.new("Cucumber", 1, :water, -50, 10, 10, 10)
      expect(cucumber.hp).to(eq(0))
    end
  end

  describe("#list_stats") do
    it("should list stats, including name, id, poketype, hp, attack, defense, speed")
    pickachorb = Pokemon.new("Pikachorb", 1, :water, 50, 10, 10, 10)
    expect(pickachorb.list_stats).to(eq("Name: Pickachorb, id: 1, poketype: water, hp: 50, attack: 10, defense: 10, speed: 10")
#or another way is: expect(pickachorb.list_stats.include?("Pickachorb")).to(eq(true))
#or via an array called stats changing the third test sentence to:
    #stats = ["Pikachorb", 1, :water, 50, 10, 10,10]
    #expect(pickachorb.list_stats.include?(stats.to_s)).to(eq(true))

    # or to simplify test with less text and repetition so that the full describe test is written this way:
    # describe("#list_stats") do
    # let(:pickachorb) { Pokemon.new("Pikachorb", 1, :water, 50, 10, 10, 10) }

    # it("should return a string") do
    # expect(pickachorb.list_stats.class.to(eq(String))
    # end

    # it("should list stats, including name, id, poketype, hp, attack, defense, speed")
    # stats = = ["Pikachorb", 1, :water, 50, 10, 10,10]
    # stats.each do |stat|
    #   expect(pickachorb.list_stats.include?(stat.to_s)).to(eq(true))

      # and then let(:pickachorb) will describe the rest of the tests in the describe block that that are all now working together to simplify the describe block
      # so that pickachorb is not repeated so many times
end
