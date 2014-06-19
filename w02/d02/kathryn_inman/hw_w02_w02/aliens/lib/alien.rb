#require 'pry'

class Alien

  attr_reader(:name, :home_planet, :food, :hostility)
  def initialize(initial_name, initial_home_planet, initial_food)
    @name = initial_name
    @home_planet = initial_home_planet
    @food = initial_food
    @hostility = nil
  end

  def land_on_earth
    "let's find some food!"
  end
end

#binding.pry
