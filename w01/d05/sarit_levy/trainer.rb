require 'pry'

class Trainer

  attr_reader(:name, :age, :hometown, :pokemons)

  def initialize(name, age, hometown, pokemons)
      @name = name
      @age = age
      @hometown = hometown
      @pokemons = pokemons
  end

end

binding.pry
