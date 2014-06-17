require 'pry'
require relative './subway.rb'
require relative './line.rb'
require relative '.station.rb'

Subway.new("MTA", line)

line = [
  Line.new("L", stations),
]


stations = [
  Station.new('8th',['James','Jessie'], true, 5),
  Station.new('6th',['Ike','Tina'], false, 4),
  Station.new('Union Square',['Whitney','Bobby'], true, 3),
  Station.new('3rd',['Thelma','Louise'], false, 2),
  Station.new('1st',['Kobe','Shaq'], true, 1)
]

loop do

  puts("=========Welcome to HAMTA!=========")
  puts("Please make a choice from below!")
  puts("1. List all Trains.")
  puts("2. View stations for a single train line.")
  puts("3. Calculate the length of your trip.")
  puts("4. Quit the Program.")
  choice = gets.chomp

  case choice
    when "1"
    when "2"
    when "3"
    when "4"
      puts "Thanks for using HAMta.  We hope to see you soon!"
      break
    else
      puts error
  end
