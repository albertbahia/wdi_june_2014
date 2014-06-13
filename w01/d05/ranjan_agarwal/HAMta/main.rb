require 'pry'
require_relative './station.rb'
require_relative './lines.rb'
require_relative './subway.rb'

# stations = {
#   [""]
# }

l = [
  eigthav = Station.new("8th Ave.", ["Holly","Jonny","Sammy"], "Yes", "14mins"),
  sixthav = Station.new("6th Ave.", ["Holly","Jonny","Sammy"], "No", "9mins"),
  unionsq = Station.new("Union Square", ["Holly","Jonny","Sammy"], "Yes", "7mins"),
  thirdav = Station.new("3rd Ave.", ["Holly","Jonny","Sammy"], "No", "16mins"),
  firstav = Station.new("1st Ave.", ["Holly","Jonny","Sammy"], "Yes", "15mins")
]
l_train = Lines.new("L train",l)

def display_heading(text)
  puts "=" * 50
  puts(text)
  puts "=" * 50
end

def main_menu()
  display_heading("HAMto - In Depth Information")
  puts ("Welcome!")
  puts ("1 - Stations Names")
  puts ("2 - Quit")
end

loop do
  main_menu()
  puts "What would you like to do today?"
  user_input = gets.chomp
  puts "=" * 50
  if user_input == "1"
    all_stations(l)
  elsif user_input == "2"
    puts "Later Alligator!"
    exit
  end
end
