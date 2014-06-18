# All pokemon should have a:
#
# name
# id
# poketype
# hp -default/max is 100
# attack
# defense
# speed

# All pokemon should be able to:
#
# list their stats
# fully restore their hp
# take damage - their hp should decrement - unless their hp is 0
# give their status - fainted or not (hp of 0)

#require 'pry'

class Pokemon
  attr_reader(:name, :id, :poketype, :hp, :attack, :defense, :speed)

  def initialize(name, id, poketype, hp, attack, defense, speed)
    @name = name
    @id = id #pokedex
    @poketype = poketype #species
    @hp = hp
    if @hp > 100
      puts "Max HP is 100, please put a valid HP value."
    end
    @attack = attack
    @defense = defense
    @speed = speed

  end

  #list stats
  def list_stats
    pokemon_info = "Name: #{name}. "
    pokemon_info += "ID: #{id}. "
    pokemon_info += "Poketype: #{poketype}. "
    pokemon_info += "HP level: #{hp}. "
  end

  def full_restore
    if hp < 100
      @hp = 100
    else
      return "#{name} is already at max hp."
    end
  end

  def take_damage(damage)
    @hp = hp - damage
    if @hp < 0
      @hp = 0
    end
  end

  def status
    if hp > 0
      return "Status: not fainted. HP is at #{hp}."
    elsif hp < 0
      return "Error, HP should not be less than 0."
    else
      "Your pokemon has fainted!"
    end
  end

end

# Pikachu = Pokemon.new("Pikachu", 004, "Electric", 25, "Go", "Defend!", 25)
#
# binding.pry
