# trainer.rb
# Khadijah HW 5
# June 15, 2014

class Trainer
  attr_reader(:name, :age, :hometown, :pokemons)

  def initialize(name, age, hometown, pokemons)
    @name = name
    @age = age
    @hometown = hometown
    @pokemons = pokemons
  end

  def to_s
    name + age.to_s + hometown + pokemons
  end

  def info
    return_array = []
    return_array.push("Trainer Name: " + @name)
    return_array.push("Trainer Age: " + @age.to_s)
    return_array.push("Trainer Hometown: " + @hometown)
    return_array.push("\n*** Pokemons ***")
    pokemons.each do |pokemon|
      return_array.push(pokemon.stats)
      return_array.push("\n")
    end

    return_array
  end

  def add(pokemon)
    pokemons.push(pokemon) unless pokemons.size == 6
  end
end
