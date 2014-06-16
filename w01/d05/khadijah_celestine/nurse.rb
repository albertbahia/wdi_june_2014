=begin
Nurse class

A nurse should have a:

name
age
town
A nurse should be able to:

list their info
heal a trainer's pokemons
hint: it should accept a single parameter

=end
class Nurse
  attr_reader(:name, :age, :town)

  def initialize(name, age, town)
    @name = name
    @age = age
    @town = town
  end

  def to_s
    @name, @age, @town
  end

  def info
    "Name: " + @name,
    "Age: " + @age.to_s,
    "Hometown: " + @hometown
  end

  def heal(trainer)
    trainer.pokemons.each do { |pokemon| pokemon.restore }
  end
