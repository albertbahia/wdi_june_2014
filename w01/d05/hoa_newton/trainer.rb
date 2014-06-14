class Trainer

	attr_reader(:name, :age, :hometown, :pokemons)
	def initialize(name, age, hometown, pokemons)
		@name = name
		@age = age
		@hometown = hometown
		@pokemons = pokemons
	end

	def list_pokemons(pokemons_arr) # list all pokemons from 1 trainer
			puts "Trainer #{@name} has pokemons: "
		pokemons_arr.each do |pokemon|
			puts pokemon.name
		end
	end

	def trainer_info
		puts "Trainer's name: #{@name}"
		puts "Age: #{@age}"
		puts "Hometown: #{@hometown}"
	end

	def add_poke(poke, pokes)
		if pokes.length >= 6
			puts "You can not own more than 6 pokemons!"
		else
			pokes.push(poke)
			puts "You just added #{poke.name}"
		end
	end

end