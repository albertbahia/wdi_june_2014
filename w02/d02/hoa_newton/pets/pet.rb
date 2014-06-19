class Pet
	attr_reader(:name, :owner, :age)

	def initialize(name, age, owner)
		@name = name
		@owner = owner
		@age = age
		@foods_eaten = []
	end

	def love_owner
		return "I love #{@owner}!"
	end

	def eat(food)
		@foods_eaten.push(food)
	end

	def list_food
		@foods_eaten.join(', ')
	end

end