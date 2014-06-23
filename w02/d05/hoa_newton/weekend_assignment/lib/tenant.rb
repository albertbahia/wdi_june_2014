

class Tenant
	attr_reader(:name, :age, :gender, :apartment)

	def initialize(name, age, gender)
		@name = name
		@age = age
		@gender = gender
		@apartment = apartment
	end

	def list_info
		"Name: #{@name} \n
		Age: #{@age} \n
		Gender: #{@gender}"
	end

end