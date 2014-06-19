# police_car.rb
# june 17
# khadijah

require 'date'

class Delorean < Car
	attr_reader(:year)

	def initialize(hp, fuel, year)
	super
		@year = year
	end

	def time_travel(something)
		puts @year
		puts Date.today.strftime("%Y")
	end
end
