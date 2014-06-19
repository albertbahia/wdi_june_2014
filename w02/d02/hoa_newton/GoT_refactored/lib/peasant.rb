require_relative './being.rb'
class Peasant 
	attr_reader(:name, :farm, :name, :strength, :house, :hp)
	def initialize(name, farm)
		@name = name
		@strength = 1
		@house = nil
		@hp = 5
		@farm = farm
	end

	def introduce 
		return "Hi, I am a humble peasant #{@name}. I work on #{@farm}"
	end

end