require_relative 'spec_helper'
require_relative '../lib/trainer'
require_relative '../lib/pokemon'

describe Trainer do
  let(:pokemons) do
    [
      Pokemon.new("Pikachu", 25, "Electric", 100, 52, 49, 88),
      Pokemon.new("bulbasaur", 1, "Grass", 2000, 54, 55, 51),
      Pokemon.new("Squirtle", 7, "Water", 0, 51, 60, 58),
      Pokemon.new("Pidgey", 16, "Flying", 100, 52, 43, 75),
      Pokemon.new("Charmander", 4, "Fire", 100, 62, 58, 54)
    ]
  end
  let(:psyduck) { Pokemon.new("Psyduck", 54, "Water", 100, 25, 17, 30) }
  let(:mew) { Pokemon.new("Mew", 151, "Psychic", 100, 84, 82, 9001) }
  let(:ash) { Trainer.new("Ash", 12, "Pallet Town", pokemons)}

  describe '#name' do
    it 'has a name' do
      expect(ash.name).to eq("Ash")
    end
  end

  describe '#list_pokemons' do
    it 'lists all of the pokemon' do
      listed_pokemon = ash.list_pokemons
      ash.pokemons.each do |pokemon|
        expect(listed_pokemon.include?(pokemon.name)).to be(true)
      end
    end
  end

  describe '#list_info' do
    it 'lists the trainers info' do
      attributes = [ash.name, ash.age, ash.hometown, ash.pokemons.count]
      attributes.each do |attribute|
        expect(ash.list_info.include?(attribute.to_s)).to be(true)
      end
    end
  end

  describe '#add_pokemon' do
    it 'adds a pokemon to the trainers pokemons' do
      count_before = ash.pokemons.count
      expect(ash.add_pokemon(psyduck)).to eq(true)
      expect(ash.pokemons.count).to be > count_before
      expect(ash.pokemons.include?(psyduck)).to eq(true)
    end

    it 'will not add if there are 6 pokemons already' do
      ash.add_pokemon(psyduck)
      expect(ash.add_pokemon(mew)).to eq(false)
      expect(ash.pokemons.include?(mew)).to eq(false)
    end
  end
end
