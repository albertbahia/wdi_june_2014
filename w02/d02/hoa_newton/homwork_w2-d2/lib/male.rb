require_relative('./people.rb')
#require 'pry'
class Male < People
	attr_reader(:gender)

	def intialize
		super(name, age, job)
		@job = true
		@gender = 'M'
	end

	def has_money(amount)
		amount
	end

end

#binding.pry