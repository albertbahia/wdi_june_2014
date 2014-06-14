require 'pry'
require_relative 'station.rb'
require_relative 'line.rb'
require_relative 'subway.rb'

l_stations = [
  Station.new("8th Ave", ["Bill", "Bob", "Billy"], true, 3),
  Station.new("6th Ave", ["Sam", "Sally"], true, 5),
  Station.new("Union Square", ["Tim", "Tommy", "Thomas", "Timothy"], false, 1),
  Station.new("3rd Ave", ["Gregory", "Gary", "George"], true, 10),
  Station.new("1st Ave", ["Jill"], false, 13),
  Station.new("Bedford Ave", ["Jill"], false, 13)
]

six_stations = [
  Station.new("Times Square", ["Bill", "Bob", "Billy"], true, 5),
  Station.new("Herald Squre", ["Sam", "Sally"], true, 3),
  Station.new("28th St", ["Tim", "Tommy", "Thomas", "Timothy"], false, 2),
  Station.new("23rd St - HT", ["Gregory", "Gary", "George"], true, 30),
  Station.new("Union Square", ["Jill"], false, 15),
  Station.new("8th St", ["Jill"], false, 7)
]

n_stations = [
  Station.new("Grand Central", ["Bill", "Bob", "Billy"], true, 3),
  Station.new("33rd St", ["Sam", "Sally"], true, 5),
  Station.new("28th St", ["Tim", "Tommy", "Thomas", "Timothy"], false, 1),
  Station.new("23rd St", ["Gregory", "Gary", "George"], true, 10),
  Station.new("Union Square", ["Jill"], false, 13),
  Station.new("Astor Place", ["Jill"], false, 13)
]

lines = [
  Line.new("l", l_stations),
  Line.new("n", n_stations),
  Line.new("six", six_stations)
]

mta = Subway.new("mta", lines)

def display_heading(title)
  puts "=" * 30
  puts title
  puts "=" * 30
  puts ""
end

def list_train_lines(train_system)
  display_heading("The Train Lines")
  puts train_system.list_lines
  puts ""
end

def list_line_stations(train_system)
  puts train_system.list_lines
  puts ""
  print "Enter line: "
  user_line = gets.chomp.downcase
  puts ""

  puts "Here are the stations for"
  puts "the #{user_line.capitalize} Train"
  puts "-" * 20
  puts train_system.list_stations_of(user_line)
  puts "-" * 20
  puts ""
end

def take_trip(train_system)

  display_heading("Take a Trip")

  puts "What line would you like to get on?"
  puts train_system.list_lines
  puts ""
  print "Enter station name: "
  line_on = gets.chomp
  puts""

  puts "What stop would you like to get on?"
  puts train_system.list_stations_of(line_on)
  puts ""
  print "Enter station name: "
  station_on = gets.chomp
  puts""

  puts "What line would you like to get off?"
  puts train_system.list_lines
  puts ""
  print "Enter station name: "
  line_off = gets.chomp
  puts""

  puts "What stop would you like to get off?"
  puts train_system.list_stations_of(line_off)
  puts ""
  print "Enter station name: "
  station_off = gets.chomp
  puts ""

  print "Stops of your trip: "
  puts train_system.trip_stops(line_on, station_on, line_off, station_off)
  puts ""

end



display_heading("Welcome to the HAMta")

# Main loop
while true
  puts "What would you like to do?"
  puts "1. List train lines"
  puts "2. List stations of train"
  puts "3. Take a trip"
  puts "4. Quit"
  puts ""
  print "Enter a number: "
  user_choice = gets.chomp
  puts ""


  case user_choice
  when "1" then list_train_lines(mta)
  when "2" then list_line_stations(mta)
  when "3" then take_trip(mta)
  when "4" then display_heading("Thanks for using HAMta"); break;
  else puts ""; puts "That is not a option!"; puts "";
  end
end
