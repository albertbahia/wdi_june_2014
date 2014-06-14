class Trainer

	attr_reader(:name, :age, :hometown, :pokemons)
	def initialize(name, age, hometown, pokemons)
		@name = name
		@age = age
		@hometown = hometown
		@pokemons = pokemons
	end

	def list_pokemons(pokemons) # list all pokemons from 1 trainer
			puts "Trainer #{@name} has pokemons: "
		pokemons.each do |pokemon|
			puts pokemon.name
		end
	end

end