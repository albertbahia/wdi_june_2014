class Nurse

	attr_reader(:name, :age, :town)
	def initialize(name, age, town)
		@name = name
		@age = age
		@town = town
	end

	def nurse_info
		puts "Nurse's name: #{@name}"
		puts "Age: #{@age}"
		puts "Town: #{town}"
	end

	def heal_trainer_pokemons(trainer)
		
	end

end