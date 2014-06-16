require 'pry'
require_relative './subway.rb'
require_relative './station.rb'
require_relative './lines.rb'


# stations = {
#   [""]
# }

l = [
  Station.new("8th Ave.", ["Holly","Jonny","Sammy"], "Yes", "14mins"),
  Station.new("6th Ave.", ["Holly","Jonny","Sammy"], "No", "9mins"),
  Station.new("Union Square", ["Holly","Jonny","Sammy"], "Yes", "7mins"),
  Station.new("3rd Ave.", ["Holly","Jonny","Sammy"], "No", "16mins"),
  Station.new("1st Ave.", ["Holly","Jonny","Sammy"], "Yes", "15mins")
]
l_train = Lines.new("L train",l)

n = [
  Station.new("Kew Gardens", ["Holly","Jonny","Sammy"], "Yes", "14mins"),
  Station.new("Forest Hills", ["Holly","Jonny","Sammy"], "No", "9mins"),
  Station.new("Union Square", ["Holly","Jonny","Sammy"], "Yes", "7mins"),
  Station.new("8th St.", ["Holly","Jonny","Sammy"], "No", "16mins"),
  Station.new("Canal St.", ["Holly","Jonny","Sammy"], "Yes", "15mins")
]
n_train = Lines.new("N train", n)

q = [
  Station.new("57th St.", ["Holly","Jonny","Sammy"], "Yes", "14mins"),
  Station.new("42nd St.", ["Holly","Jonny","Sammy"], "No", "9mins"),
  Station.new("Union Square", ["Holly","Jonny","Sammy"], "Yes", "7mins"),
  Station.new("West 4th St.", ["Holly","Jonny","Sammy"], "No", "16mins"),
  Station.new("World Trade Center", ["Holly","Jonny","Sammy"], "Yes", "15mins")
]
q_train = Lines.new("Q Train", q)

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


binding.pry
