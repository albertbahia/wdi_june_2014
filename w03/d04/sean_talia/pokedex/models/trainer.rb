class Trainer < ActiveRecord::Base

  has_and_belongs_to_many(:pokemons)

  def info()
    {id: id, name: name, age: age, hometown: hometown}
  end

  def choose_pokemon(pokemon_array)
    pokemon_array.each { |pokemon_to_add| self.pokemons << pokemon_to_add}
  end

end
