require 'pry'

require_relative 'station.rb'
require_relative 'subway.rb'
require_relative 'line.rb'

HAMta = Subway.new("HAMta", ["L", "S", "N"])


first_ave = Station.new("1st Ave", ["Tim", "Bob"], "yes", 6)
l = Line.new("L", [first_ave])








l.list_name

binding.pry
