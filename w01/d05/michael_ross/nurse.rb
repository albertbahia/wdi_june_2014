require 'pry'

class Nurse

  attr_reader(:name, :age, :town)

  def initialize(name, age, town)
    @name = name
    @age = age
    @town = town
  end

  def name
    return @name.capitalize
  end

  def nurse_info
    info_string = "| Name: #{name} | "
    info_string += "Age: #{age} | "
    info_string += "Town: #{town} |"
  end

  def heal_pokemons(trainer)
    trainer.pokemons.each { |pokemon| pokemon.full_restore } 
  end


end

laurie = Nurse.new("Laurie Anderson", 47, "White Plains")
binding.pry
