require_relative('alien.rb')

class Bloop < Alien
  def initialize(initial_name, initial_home_planet, initial_food, initial_volume)
    super(initial_name, initial_home_planet, initial_food)
    @volume = initial_volume
  end
end
