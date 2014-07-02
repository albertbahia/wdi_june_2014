require_relative '../lib/pokemon.rb'

describe Pokemon do
	#hp instance method
	describe "#hp" do
		it "should return the hp value" do
			p = Pokemon.new("rarrr", 1, :water, 100, 17, 15, 5)
			expect(p.hp).to eq(100)
		end
    it "should not return 100 when HP is greater than the max" do
      p = Pokemon.new("rarrr", 1, :water, 150, 17, 15, 5)
      expect(p.hp).to eq(100)
    end
    it "should not return 0 when HP is negative" do
      p = Pokemon.new("rarrr", 1, :water, -150, 17, 15, 5)
      expect(p.hp).to eq(0)
    end
	end

  #be the most explicit and literal in your test
  describe "stats" do
    let :p = { Pokemon.new("rarrr", 1, :water, 100, 17, 15, 5) }
    it "should return a string" do
      expect(p.stats.class).to eq(String)
    end

    it "should return list stats" do
      expect(p.stats).to eq(true)
    end
  end

end
