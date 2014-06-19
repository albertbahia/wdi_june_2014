# pet.rb
# june 17
# khadijah

class Pet

	def initialize(name, owner, age)
		@foods_eaten = []
		@name = name
		@owner = owner
		@age = age
	end

	def love_owner()
		"#{@name} loves her owner #{@owner}"
	end

	def eat(food)
		@foods_eaten.push(food)
		nil
	end

	def list_foods()
		str = ""
		@foods_eaten.each do |food|
			str += food
		end
	end

end
