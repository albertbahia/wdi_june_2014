# require 'pry'

# A trainer should have a:
#
# name
# age
# hometown
# pokemons

# A trainer should be able to:
#
# list their pokemons
# list their info
# add a pokemon
# can not have more than 6

class Trainer
  attr_reader(:name, :age, :hometown, :pokemons)

  def initialize(name, age, hometown, pokemons)
    @name = name
    @age = age
    @hometown = hometown
    @pokemons = pokemons
  end

  def name
    return @name.capitalize
  end

  def list_pokemons
    #keeps the data as an array
    pokemons.map { |pokemon| pokemon.list_stats }.join("\n")
  end

  def list_info
    trainer_info = "Name: #{name}. "
    trainer_info += "Age: #{age}. "
    trainer_info += "Hometown: #{hometown}. "
    trainer_info += "(S)he has #{pokemons.count} Pokemon. "
  end

  def add_pokemon(pokemon_to_add)
    count = pokemons.count
    if count >= 6
      puts "Sorry! You can only have 6 pokemons per trainer."
      return false
    else
      pokemons.push(pokemon_to_add)
      return true
    end
  end

end

# charlye = Trainer.new("Charlye", 31, "New Orleans", ["Pikachu"])
#
# binding.pry
