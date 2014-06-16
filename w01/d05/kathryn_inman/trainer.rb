# A trainer should be able to:
# - list their pokemons
# - list their info
# - add a pokemon
#   - can not have more than 6

require 'pry'

class Trainer

  attr_reader(:name, :age, :hometown, :pokemans)
  def initialize(initial_name, initial_age, initial_hometown, initial_pokemans)
    @name = initial_name
    @age = initial_age
    @hometown = initial_hometown
    @pokemans = initial_pokemans
  end

  def trainer_info()
    trainer_info_list = "#{name}, "
    trainer_info_list += "Age: #{age}, "
    trainer_info_list += "Hometown: #{hometown}"
  end

  def pokedeck
    pokeman_collection = "#{pokemans}"
  end

  def catch_a_pokeman(new_monster)
    pokemans += new_monster
  end

end

trainer1 = Trainer.new("Fen", 22, "NYC", caught_pokemans = [
  "po1", "po2", "po3"])

  binding.pry
