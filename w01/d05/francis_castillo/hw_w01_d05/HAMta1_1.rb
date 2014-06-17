require_relative 'station_class.rb'
require_relative 'line_class.rb'
require_relative 'subway_class.rb'
#require 'pry'
subway = [Subway.new("HAMta", ["L","N", "6"])]

line = [
  Line.new("L", ["8th Ave", "6th Ave", "Union Square", "3rd Ave", "1st Ave", "Bedford Ave"]),
  Line.new("N", ["Times Square", "Herald Square", "28th St", "23rd St -- Hamco Terminal","Union Square",  "8th St"]),
  Line.new("6", ["Grand Central", "33rd St", "28th St", "23rd St","Union Square",  "Astor Place"]),
]

stations_l = [
  Station.new("8th Ave", ["James", "Rick", "Charles"], true, 7),
  Station.new("6th Ave", ["Jimmy", "Rich", "Chuck"], true, 3),
  Station.new("Union Square 1", ["Jack", "Ray", "Chase"], false, 5),
  Station.new("3rd Ave", ["Jon", "Ron", "Sam"], true, 2),
  Station.new("1st Ave", ["John", "Ronnie", "Sammmiw"], true, 9),
  Station.new("Bedford Ave", ["Jay", "Roy", "Samuel"], false, 1)
]
station_n =[
  Station.new("Times Square", ["Ray", "Ralph", "Sonia"], true, 9),
  Station.new("Herald Square", ["Ricky", "Ramon", "Jeff"], true, 8),
  Station.new("28th St", ["Al", "Gabe", "Rey"], false, 7),
  Station.new("23rd St -- Hamco Terminal", ["Jason", "Fran", "Chris"], false, 6),
  Station.new("Union Square", ["Les", "Ro", "Hahn"], true, 5),
  Station.new("8th St", ["Kahn", "Frank", "Franco"], false, 4)
]
station_6 = [
  Station.new("Grand Central", ["Carmen", "Nat", "Gina"], true, 3),
  Station.new("33rd St", ["Joy", "Tom", "Dom"], false, 3),
  Station.new("28th St", ["Jude", "Anne", "Try"], false, 2),
  Station.new("23rd St", ["Brian", "Ryu", "Gene"], true, 1),
  Station.new("Union Square", ["Jaye", "Ronin", "Zack"], true, 6),
  Station.new("AStor Place ", ["Judah", "Leia", "Noah"], true, 10)
]

puts subway[0].calculate_distance(1,4)
# i=0
# while i < line.length do
#   # puts line[i].list_stations
#   puts line[i].calculate_distance
#   i += 1
# end

loop do

#menu
puts("****<Welcome to HAMta>****")
puts("Make your selection from the list below!")
puts("Press [1] to List All HAMta Trains")
puts("Press [2] to List Stations for a Single Line")
puts("Press [3] to Calculate of Trip")
puts("Press [4] to Quit HAMta")
menu_choice = gets.chomp.to_i


  if menu_choice == 1
    subway[0].list_trains.each {|x| puts "***<The #{x} Train>***"}
  elsif menu_choice == 2
    subway[0].list_trains.each.with_index {|x,i| puts "***<Press[#{i}] for The #{x} Train Stations>***"}
    line_choice = gets.chomp.to_i
    if line_choice == 0
      stations_l.each.with_index {|x, i| puts stations_l[i].list_info}
    elsif line_choice == 1
      stations_n.each.with_index {|x, i| puts stations_l[i].list_info}
    elsif line_choice == 2
      stations_6.each.with_index {|x, i| puts stations_l[i].list_info}
    end
  elsif menu_choice == 3
    trip_cal = []
    #start of trip
    puts("What line will you start at?")
    subway[0].list_trains.each.with_index {|x, i| puts "***<Press[#{i}] for The #{x} Train>***"}
    line_start = gets.chomp.to_i
    trip_cal.push(line_start)
    puts("What station will you start at?")
    line[line_start].list_stations.each_with_index { |x,i| puts "Press[#{i}] for #{x}"}
    station_start = gets.chomp.to_i
    trip_cal.push(station_start)
    #end of trip
    puts("What line will you end at?")
    subway[0].list_trains.each.with_index {|x, i| puts "***<Press[#{i}] for The #{x} Train>***"}
    line_end = gets.chomp.to_i
    trip_cal.push(line_end)
    puts("What station will you end at?")
    line[line_end].list_stations.each_with_index { |x,i| puts "Press[#{i}] for #{x}"}
    station_end = gets.chomp.to_i
    trip_cal.push(station_end)

    #trip calculation
      #one train
    if trip_cal[0] == trip_cal[2]
      puts line[trip_cal[0]].calculate_trip(trip_cal[1], trip_cal[3])
    else
      #two trains
      trip_one_index = line[trip_cal[0]].list_stations.index("Union Square").to_i
      trip_one = line[trip_cal[0]].calculate_trip(trip_one_index, trip_cal[1])
      trip_two_index = line[trip_cal[2]].list_stations.index("Union Square").to_i
      trip_two = line[trip_cal[2]].calculate_trip(trip_two_index, trip_cal[3])
      puts("Your trip is <#{subway[0].calculate_distance(trip_one, trip_two)}> stops long")

    end
  elsif menu_choice == 4
    break
  end
end

#binding.pry
