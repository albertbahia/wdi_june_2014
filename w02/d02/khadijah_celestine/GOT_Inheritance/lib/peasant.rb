class Peasant < Human
	attr_reader(:farm)

	def initialize(name, farm)
		@name=name
		@farm = farm
		@strength = 1
		@hp = 5
	end

	def introduce
		"#{@name}, lives at #{@farm}, and is just a humble peasant."
	end
end
