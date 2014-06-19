require_relative('.alien.rb')

class Greenie < Alien
  def initialize(initial_name, initial_home_planet, initial_food, initial_cigs_to_trade)
    super(initial_name, initial_home_planet, initial_food)
    @cigs_to_trade = initial_cigs_to_trade
  end
end
