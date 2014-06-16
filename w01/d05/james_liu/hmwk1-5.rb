require_relative './class_subway.rb'
require_relative './class_station.rb'
require_relative './class_line.rb'

station1 = Station.new("8th Ave", ["John","Jacob"], "yes", 10)
station2 = Station.new("6th Ave", ["Jingle","Heimer"] , "no" , 20)
station3 = Station.new("Union Square", ["Smith"], "yes",20)
station4 = Station.new("3rd Ave",  ["Mary", "Kate"], "yes", 20)
station5 = Station.new("1st Ave", ["And","Ashley"], "yes", 20)

l_train = [station1, station2, station3, station4, station5]
n_train =[]

train1 = Line.new(:L , l_train)
train2 = Line.new(:N, n_train)

subway = [train1, train2]

mta = Subway.new(:MTA, subway)

loop do

puts "*************************************"
puts "*** WELCOME TO THE TRAIN STATION ***"
puts "         PLEASE MAKE A SELECTION!"
puts "1 - View Train Lines"
puts "2 - View Stations for a Train Line"
puts "3 - Calculate the Distance of a Trip"
puts "4 - Quit!"
puts "*************************************"

user_input = gets.chomp()

case user_input 
  when "4"
  exit
  
  when "1"
  puts " "
  puts mta.list_lines
  puts " "
  
  when "2"
  puts ""
  puts train1.list_stations
  puts ""
  
  when "3"
  puts ""
  puts ""
  
  else
  puts "Sorry, no comprendo!"
  puts ""
  end
  
end
