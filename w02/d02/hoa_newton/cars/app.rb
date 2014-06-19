require 'pry'
require_relative 'lib/car.rb'
require_relative 'lib/police_car.rb'
require_relative 'lib/delorean.rb'
binding.pry

# * Car
#   * horsepower - a number between 1 and the limits of your imagination
#   * fuel - number between 0 and 5
#   * rev() - return the string "VROOOM!"
#   * drive() - decrement fuel by 1 and return true if fuel > 0, else return false
# * PoliceCar
#   * arsenal - array of strings representing weapons, initialized to empty array
#   * add_to_arsenal(weapon)
# * DeLorean
#   * current_time - a number representing a year
#   * time_travel(year) - change current_time to 'year' if it's positive