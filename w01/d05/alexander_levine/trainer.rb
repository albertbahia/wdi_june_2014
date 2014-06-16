class Trainer

  attr_reader :name, :age, :hometown, :pokemons

  def initialize(name, age, hometown, pokemons)
    @name = name
    @age = age
    @hometown = hometown
    @pokemons = pokemons
  end

  def list_info
    pokemon_name = pokemons.map { |pokemon| pokemon.name }
    return "name: #{name}, age: #{age}, hometown: #{hometown},
      pokemons: #{pokemon_name}"
  end

  def add_pokemon(pokemon_name)
    if pokemons.length < 6
      @pokemons.push(pokemon_name)
    else
      return "Can only hold maximum of 6 pokemon!"
    end
  end

end




# #### Trainer class
# A trainer should have a:
# - name
# - age
# - hometown
# - pokemons
#
# A trainer should be able to:
# - list their pokemons
# - list their info
# - add a pokemon
#   - can not have more than 6
