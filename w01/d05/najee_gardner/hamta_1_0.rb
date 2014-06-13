require 'pry'
require_relative 'station.rb'
require_relative 'line.rb'

stations = [
  Station.new("8th Ave", ["Bill", "Bob", "Billy"], true, 3),
  Station.new("6th Ave", ["Sam", "Sally"], true, 5),
  Station.new("Union Square", ["Tim", "Tommy", "Thomas", "Timothy"], false, 1),
  Station.new("3rd Ave", ["Gregory", "Gary", "George"], true, 10),
  Station.new("1st Ave", ["Jill"], false, 13)
]

l_train = Line.new("l", stations)

def display_heading(title)
  puts "=" * 30
  puts title
  puts "=" * 30
  puts ""
end


def list_line_stations(line)
  display_heading("#{line.name.capitalize} Train Stations")

  puts "Here are the stations for"
  puts "the #{line.name.capitalize} Train"
  puts "-" * 20
  puts line.list_stations
  puts "-" * 20
  puts ""
end


def take_trip(line)

  display_heading("Take a Trip")

  puts "What stop would you like to get on?"
  puts line.list_stations
  puts ""
  print "Enter station name: "
  user_on = gets.chomp
  puts""

  puts "What stop would you like to get off?"
  puts line.list_stations
  puts ""
  print "Enter station name: "
  user_off = gets.chomp
  puts ""

  print "Stops of your trip: "
  puts line.distance(user_on, user_off)
  puts ""

end


# Main loop
while true
  display_heading("Welcome to the HAMta")

  puts "What would you like to do?"
  puts "1. List stations for L Train"
  puts "2. Take a trip"
  puts "3. Quit"
  puts ""
  print "Enter a number: "
  user_choice = gets.chomp


  case user_choice
  when "1" then list_line_stations(l_train)
  when "2" then take_trip(l_train)
  when "3" then display_heading("Thanks for using HAMta"); break;
  else puts ""; puts "That is not a option!"; puts "";
  end
end
