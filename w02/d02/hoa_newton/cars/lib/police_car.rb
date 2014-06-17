

class PoliceCar < Car   # PoliceCar inherits the Car class
	attr_reader(:arsenal)

	def initialize(hp, fuel) # This over writes the initialize in the Car
		@hp = hp
		if fuel > 5
			@fuel = 5
		elsif fuel < 0
			@fuel = 0
		else
			@fuel = fuel
		end
		@arsenal = []
	end

	def add_to_arsenal(weapon)
		@arsenal.push(weapon)
		
	end
end