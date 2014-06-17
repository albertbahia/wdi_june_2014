require_relative('../lib/pokemon.rb')

describe (Pokemon) do
	describe("#hp") do  # 	# sign means istance method
		it ("should return the hp value") do
			pikachu = Pokemon.new("Pikachu", 1, "Grass", 50, 50, 90, 95)
			expect(pikachu.hp).to(eq(50)) 
		end
		it("should return 100 when the HP greater than 100") do
			pikuchuan = Pokemon.new("Pikachu", 1, "Grass", 150, 50, 90, 95)
			expect(pikuchuan.hp).to(eq(100))
		end
		it("should return 0 when HP is negative") do
			pikucoa = Pokemon.new("Pikachu", 1, "Grass", -20, 50, 90, 95)
			expect(pikucoa.hp).to(eq(0))
		end
	end

	describe("#list_stats") do
		let(:pikucoa) {Pokemon.new("pikucoa", 1, :water, 50, 10, 40, 80)}

		it("should return a string") do
			expect(pikucoa.list_stats.class).to(eq(String))
		end

		it("should list stats, including name, id, poketype, hp, attack, defense, speed")
		stats = ["pikucoa", 1, :water, 50, 10, 40, 80]
		stats.each do |stat|
			expect(pikucoa.list_stats.include?(stats.to_s)).to(eq(true))
		end
		
	end
	
end