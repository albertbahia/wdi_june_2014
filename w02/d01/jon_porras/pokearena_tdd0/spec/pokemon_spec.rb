require_relative 'spec_helper'
require_relative '../lib/pokemon'

describe Pokemon do
  let(:pikachu) { Pokemon.new("Pikachu", 25, "Electric", 50, 52, 49, 88) }
  let(:bulbasaur) { Pokemon.new("bulbasaur", 1, "Grass", 2000, 54, 55, 51) }
  let(:squirtle) { Pokemon.new("Squirtle", 7, "Water", 0, 51, 60, 58) }

  describe '#name' do
    it 'has a name' do
      expect(pikachu.name).to eq("Pikachu")
    end
    it 'has a capitalized name' do
      expect(bulbasaur.name).to eq("Bulbasaur")
    end
  end

  describe("#hp") do
    it("should return the HP value") do
      pikachorb = Pokemon.new("Pikachorb", 1, :water, 50, 10, 10, 10)
      expect(pikachorb.hp).to(eq(50))
    end
    it("should return 100 when HP is greater than the max") do
      chorizord = Pokemon.new("chorizord", 1, :water, 150, 10, 10, 10)
      expect(chorizord.hp).to(eq(100))
    end
    it("should return 0 when HP is negative") do
      squirble = Pokemon.new("Squirble", 1, :water, -10, 10, 10, 10)
      expect(squirble.hp).to(eq(0))
    end
  end

  describe("#list_stats") do
    let(:pikachorb) { Pokemon.new("Pikachorb", 1, :water, 50, 10, 20, 30) }

    it("should return a string") do
      expect(pikachorb.list_stats.class).to(eq(String))
    end

    it("should list stats, including name, id, poketype, hp, attack, defense, speed") do
      stats = ["Pikachorb", 1, :water, 50, 10, 20, 30]
      stats.each do |stat|
        expect(pikachorb.list_stats.include?(stat.to_s)).to(eq(true))
      end
    end
  end

  describe '#fainted?' do
    it 'has a status' do
      expect(pikachu.fainted?).to eq(false)
      expect(squirtle.fainted?).to eq(true)
    end
  end

  describe '#take_damage' do
    it 'can take damage' do
      start_hp = pikachu.hp
      pikachu.take_damage
      expect(pikachu.hp).to be < start_hp
    end

    it 'cannot take damage if it is fainted' do
      expect(squirtle.take_damage).to eq(false)
    end
  end

  describe '#full_restore' do
    it 'restores a pokemons hp' do
      start_hp = squirtle.hp
      squirtle.full_restore
      expect(squirtle.hp).to eq(100)
    end
  end

end
