require_relative('../lib/pokemon.rb')
describe(Pokemon) do
	describe("#hp") do 
		it("should return the hp value ") do 
			charizard = Pokemon.new("charizard", 006, :flying, 100, 70, 78, 100)
			expect(charizard.hp).to(eq(100))
		end 
		it("should not be greater than 100")do 
			charchode = Pokemon.new("charizard", 006, ["fire","flying"], 150, 70, 78, 100)
			expect(charchode.hp).to(eq(100))
		end 
		it("should return 0 when HP is negative") do 
		charred = Pokemon.new("charizard", 006, ["fire","flying"], -50, 70, 78, 100)
			expect(charred.hp).to (eq(0))	
		end 

	end
	describe("list stats") do 
		let (:charizard) { Pokemon.new("charizard", 006, "fire", -50, 70, 78, 100)}
		
		it("should return a string") do 
			expect(charizard.list_stats.class).to(eq(String))
		end 
		it ("should list stats of pokemon") do 
		stats = ["charizard", 006, "fire", -50, 70, 78, 100]
		stats.each do |stat|
			expect(charizard.list_stats.include?(stat.to_s)).to(eq(true))
			end 
		end 
	end 
end
