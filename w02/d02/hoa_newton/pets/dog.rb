
class Dog < Pet
	attr_reader(:ear_type)

	def initialize(name, age, owner, ear_type)
		super(name, age, owner)
		@ear_type = ear_type
	end

	def bark()
		return "Bow bow ruff ruff"
	end

	def eat(food)
		super(food)
		puts("woof")
	end

end