require_relative 'station.rb'
require_relative 'line.rb'

stations = [
  Station.new('8th',['James','Jessie'], true, 5),
  Station.new('6th',['Ike','Tina'], false, 4),
  Station.new('Union Square',['Whitney','Bobby'], true, 3),
  Station.new('3rd',['Thelma','Louise'], false, 2),
  Station.new('1st',['Kobe','Shaq'], true, 1)
]
l_train = Line.new(:L, stations)

def menu
  return ["Welcome to HAMta","Choose 1 to view all stations","Choose 2 for trip info","Choose 3 to Quit"].join("\n")
end
def prompt
  print '> '
end

loop do
  puts menu
  prompt
  choice = gets.chomp().to_i
  case choice
  when 1
    puts l_train.list_stations
  when 2
    puts "Where are you getting on?"
    prompt
    start_trip = gets.chomp
    puts "Where are you getting off?"
    prompt
    end_trip = gets.chomp
    trip_length = l_train.calculate_trip(start_trip,end_trip)
    if trip_length
      puts "Your trip is #{l_train.calculate_trip(start_trip,end_trip)} stop(s)"
    else
      puts "There was a problem"
    end
  when 3
    puts "Thank you for riding the HAMta"
    break
  end
end
