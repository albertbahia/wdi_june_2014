require_relative './pokemon.rb'
require_relative './trainer.rb'
require_relative './nurse.rb'

pokemon {
  [Pokemon.new("Froakie", 656, "Water", 100, "Water Pulse", "Smack Down", 71)],
  [Pokemon.new("Electrode", 101, "Electric", 100, "Sonic Boom", "Electro Ball", 140)],
  [Pokemon.new("Ponyta", 077, "Fire", 100, "Flame Wheel", "Bounce", 90)],
  [Pokemon.new("Machop", 066, "Fighting", 100, "Dynamic Punch", "Seismic Toss", 35)],
  [Pokemon.new("Kadabra", 064, "Psychic", 100, "Confusion", "Telekinesis", 105)],
  [Pokemon.new("Glacion", 471, "Ice", 100, "Ice Gang", "Hail", 65)],
  [Pokemon.new("Dragonair", 148, "Dragon", 100, "Dragon Tail", "Fire Blast", 70)],
  [Pokemon.new("Boldore", 525, "Rock", 100, "Sand Attack", "Smack Down", 20)]
}

#Pokemon behaviors:

#From instructions:
# All pokemon should be able to:
# - list their stats
# - fully restore their hp
# - take damage
#   - their hp should decrement
#   - unless their hp is 0
# - give their status
#   - fainted or not (hp of 0)

  def list_pokemon_stats
    puts("Name: {#name}")
    puts("HP: {#hp}")
  end

#Not sure how to complete these methods
  def restore_pokemon_hp

  end

  def pokemon_take_damage

  end

  def pokemon_status

  end

#Trainer behaviors:

#From instructions:
# A trainer should be able to:
# - list their pokemons
# - list their info
# - add a pokemon
#   - can not have more than 6

#Not sure how to complete these methods
  def list_pokemons

  end

  def list_trainer_info

  end

  def add_pokemon

  end

#Nurse behaviors:

#From instructions:
# A nurse should be able to:
# - list their info
# - heal a trainer's pokemons

#Not sure how to complete these methods

  def list_nurse_info

  end

  def heal_pokemon

  end
