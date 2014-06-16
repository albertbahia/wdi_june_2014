require 'pry'

class Station
	
	attr_reader(:name, :avg_wait_time, :wheelchair, :workers)

	def initialize(initial_name, initial_avg_wait_time, initial_wheelchair, workers)
		puts("New station created.")
		@name = initial_name
		@workers = workers
		@avg_wait_time = initial_avg_wait_time
		@wheelchair = initial_wheelchair
	end

	def name
		return @name
	end

	def workers
		return @workers
	end

	def wc_accessible
		return @wc_accessible
	end

	def wait_time
		return @wait_time
	end

	def list_workers
		workers.join(' and ')
		# workers is from the 'workers' method in this class (class Station).
	end

	def list_info
		info_string = "Name: #{name},"
		info_string += " WC ACCESSSIBLE: #{wc_accessible},"
		info_string += " #{wait_time} wait time"
	end
end

# station_1 = Station.new("8th Ave", 10, true, ["Batman", "Superman"])
# station_2 = Station.new("6th Ave", 20, false, ["Green Lantern", "Flash", "Ryu"])
# station_3 = Station.new("Union Square", 30, false, ["Captain America", "Wolverine", "Lord Baelish"])
# station_4 = Station.new("3rd Ave", 40, true, ["Spider Man", "Thing"])
# station_5 = Station.new("1st Ave", 50, true, ["Guile", "John Snow", "Stark"])


# binding.pry