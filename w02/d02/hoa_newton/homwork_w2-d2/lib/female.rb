require_relative('./people.rb')

class Female < People
	attr_reader(:gender)

	def initialize(name, age, job)
		super(name, age, job)
		@job = false
		@gender = "F"
	end

end