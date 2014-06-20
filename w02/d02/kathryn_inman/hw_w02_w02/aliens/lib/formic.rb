require_relative('alien.rb')

class Formic < Alien
  def initialize(initial_name, initial_home_planet, initial_food, initial_ansible_connection)
    super(initial_name, initial_home_planet, initial_food)
    @ansible_connection = initial_ansible_connection
  end
end
