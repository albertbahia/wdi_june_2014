#require 'pry'

class Trainer

  attr_reader(:trainer_name, :age, :hometown, :pokemons)

  def initialize(trainer_name, age, hometown, pokemons)
    @trainer_name = trainer_name
    @age = age
    @hometown = hometown
    @pokemons = pokemons
  end

  def list_pokemons
    pokemon_string = pokemons.map {|pokemon| pokemon.pokemon_name}
    return pokemon_string.join(" ")
  end

  def list_info
    info_string = "Name: #{trainer_name} "
    info_string += "Age: #{age} "
    info_string += "Hometown: #{hometown} "
    info_string += "Pokemons: #{list_pokemons} "
  end

  def add_pokemon(pokemon)
    pokemons.push(pokemon)
    return "You have added a new Pokemon!"
  end

end


#binding.pry
