class People
	attr_reader(:name, :age, :job)

	def initialize(name, age, job)
		@name = name
		@age = age
		@job = job
	end

end