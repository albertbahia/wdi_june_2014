require_relative('../lib/pokemon.rb')



  describe(Pokemon) do
    describe("#hp") do
      it("should return the default hp value") do
        pikachu = Pokemon.new("Pikachu", 025, :fuzzy, 50, 60, 70, 80)
        expect(pikachu.hp).to(eq(50))
      end

      it("should return 100 when HP is greater than the max") do
        chorizord = Pokemon.new("Chorizord", 1, :water, 150, 10, 10, 10)
        expect(chorizord.hp).to(eq(100))
      end

      it("should return 0 when HP is negative") do
        mario = Pokemon.new("Mario", 1, :water, -10, 10, 10, 10)
        expect(mario.hp).to(eq(0))
      end
    end

    describe("#list_stats") do
      it("should list its stats, including name, id, poketype, hp, attack, defend, speed") do
        mario = Pokemon.new("Mario", 1, :water, 50, 10, 10, 10)
        stats = ["Mario", 1, :water, 50, 10, 10, 10]
        stats.each do |stat|
          expect(mario.list_stats.include?(stat.to_s)).to(eq(true)) 


      end
    end



end
