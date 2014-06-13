require 'pry'
require_relative './line.rb'
require_relative './station.rb'

l = [
	Station.new("8th Ave", 10, true, ["Batman", "Superman"]),
	Station.new("6th Ave", 20, false, ["Green Lantern", "Flash", "Ryu"]),
	Station.new("Union Square", 30, false, ["Captain America", "Wolverine", "Lord Baelish"]),
	Station.new("3rd Ave", 40, true, ["Spider Man", "Thing"]),
	Station.new("1st Ave", 50, true, ["Guile", "John Snow", "Stark"])
]

binding.pry

n = [
	Station.new("Times Square", 2, true, ["Legolas", "Gandalf", "Frodo"] ),
	Station.new("Herald Square", 4, false,["Pipin", "Aragorn"] ),
	Station.new("28th", 5 , true, ["Bilbo", "Sauron", "Sarumon", "Urukai"]),
	Station.new("23rd - HAMco Terminal", 3 , false, ["Don Jon", "Machiavelli", "Da Vinci"]),
	Station.new("Union Square", 8, true, ["Donatello", "Leonardo", "Raphael", "Michelangelo"]),
	Station.new("8th", 8, true, ["Scotty", "McCoy", "Spock", "Kirk"])
]

binding.pry

s = [
	Station.new("Grand Central", 5, true, ["Boom", "Joker", "Xavier"] ),
	Station.new("33rd", 1, false,["Storm", "Flame"] ),
	Station.new("28th", 2, true, ["Thor", "Silver Surfer", "Links", "Mega Man"]),
	Station.new("23rd", 4, false, ["Don ", "Zack Morris", "Kelly Kapowski"]),
	Station.new("Union Square", 8, true, ["AC Slater", "Jesse Spano", "Screech Powers", "Lisa Turtle"]),
	Station.new("Astor Place", 2, true, ["Urkel", "Stephon", "Steven", "Theon"])
]

binding.pry

# l_train = Line.new("L", [station_1, station_2, station_3, station_4, station_5])
#
# binding.pry

def display_menu(text)
	puts("-----------------------")
	puts("----#{text}----")
	puts("-----------------------")
end


loop do
	display_menu("HAMta System v1")
	puts("1. List all train stations for the L.")
	puts("2. Quit the program.")
	puts("What would you like to do?")
	option = gets().chomp().to_i

	if option == 1
		puts("These are stops for the L train:")



			# for i in 0..4 do
			# 	puts("Name: #{l_train.stations_list[i].name}")

			# 	puts("Average Wait Time: #{l_train.stations_list[i].avg_wait_time}")

			# 	puts("Wheelchair Accessible: ")
			# 	if l_train.stations_list[i].wheelchair == true
			# 		puts("Yes")
			# 	else
			# 		puts("No")
			# 	end

			# 	puts("Workers: #{l_train.stations_list[i].workers_list}")
			# 	puts()

			# This outputs all the station objects.  I was having trouble accessing the objects in the array of objects.
			# I would have done following logically.
			# Output Average wait time: l_train.stations_list[avg_wait_time]
			# Output Wheelchair: l_train.stations_list[wheelchair]
			# Output Workers list: l_train.stations_list[workers_list]
			end
		puts()
	elsif option == 2
		exit
	end

end
