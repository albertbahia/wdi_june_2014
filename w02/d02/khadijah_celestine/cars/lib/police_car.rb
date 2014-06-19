# police_car.rb
# june 17
# khadijah

class PoliceCar < Car
	attr_reader(:arsenal)
	def initialize(hp, fuel)
	super
		@arsenal = []
	end

	def add(something)
		@arsenal.push(something)
	end
end
