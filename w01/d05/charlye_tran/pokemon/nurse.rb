# A nurse should have a:
#
# name
# age
# town
# A nurse should be able to:
#
# list their info
# heal a trainer's pokemons
  # hint: it should accept a single parameter

#require 'pry'

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

  def info
    nurse_info = "Name: #{name}. "
    nurse_info += "Age: #{age}. "
    nurse_info += "Town: #{town}."
  end

  def heal(trainer)
    trainer.pokemons.each { |pokemon| pokemon.full_restore }
  end
end

# nurse = Nurse.new("Emily", 25, "Seattle")
#
# binding.pry
