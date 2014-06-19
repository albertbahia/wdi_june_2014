require_relative 'being.rb'

class Human < Being

	attr_reader(:house)

	def initialize (name, house, strength)
		super(name, strength, 200)
		@house = house
	end

	def introduce
		"My name is #{@name}. I am from the house of #{@house}"
	end

end
