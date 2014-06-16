require 'pry'
# require_relative 'pokemon.rb'

class Nurse
  attr_reader :name, :age, :town

  def initialize(age, town)
    @name = "joy"
    @age = age
    @town = town
  end

  def info
    info_list = "Nurse #{name.capitalize}\n"
    info_list << "-" * 15 + "\n"
    info_list << "Age: #{age}/Town: #{town}\n"
  end

  def heal_pkmn(pokemons)
    pokemons.each { |pkmn| pkmn.restore_hp }
  end
end

# pikachu = Pokemon.new("pikachu", 25, ["electric"], 23, 56, 75)
# squirtle = Pokemon.new("squirtle", 4, ["water"], 36, 74, 23)
# joy = Nurse.new(20, "Lavender Town")
#
# pikachu.take_damage(25)
# squirtle.take_damage(99)
#
# binding.pry
