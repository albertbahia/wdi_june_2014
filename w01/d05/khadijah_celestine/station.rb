# station.rb
# June 13
# Khadijah

require 'pry'

class Station

	attr_reader(:name, :workers, :wc_acess, :wait_time)

	def initialize(name, workers = [], wc_acess = true, wait_time = 5)
		@name = name
		@workers = workers
		@wc_acess = wc_acess
		@wait_time = wait_time
	end

end

binding.pry
