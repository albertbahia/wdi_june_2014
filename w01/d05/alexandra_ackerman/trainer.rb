require './pokemon.rb'

class Trainer

  attr_reader( :name, :age, :hometown, :pokemon)

  def initialize(name, age, hometown, pokemon)
    @name = name
    @age = age
    @hometown = hometown
    @pokemon = pokemon
  end

  def list_info
        info_string = "Name: #{name.capitalize}, "
        info_string += "Age: #{age} "
        info_string += "Hometown: #{hometown.capitalize} "
        info_string += "Pokemon: #{pokemon}"
  end

  def list_pokemon
    pokemon_list = pokemon.map { |pokemon| pokemon.list_name }
    pokemon_list.join(", ")
  end

  def add_pokemon(new_pokemon)
    pokemon.map { |pokemon| Pokemon.new(new_pokemon) }
  end

end


# ash = Trainer.new("Ash", 24, "Pallet Town", ash_pokemon)
#Notes on class datatype
#name = string, age = integer, hometown = string, pokemon = (array of stings)
