# dog.rb
# june 17
# khadijah

class Dog < Pet
	attr_reader(:ear_type)
	
	def initialize(name, age, owner, ear_type)
		super(name, age, owner)
		@ear_type = ear_type 
	end

	def bark
		"#{@name} has barked!"
	end

end
