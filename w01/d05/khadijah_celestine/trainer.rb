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
    @name, @age, @hometown, @pokemons
  end

  def info
    "Name: " + @name,
    "Age: " + @age.to_s,
    "Hometown: " + @hometown,
    "Pokemons: " + @pokemons
  end

  def pokemons
    pokemons.each do { |pokemon| pokemon}
  end

  def add(pokemon)
    pokemons.push(pokemon) unless pokemons.size == 6
  end
