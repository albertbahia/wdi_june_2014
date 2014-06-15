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

class Nurse
  attr_reader(:name, :age, :town)

  def initialize(name, age, town)
    @name = name
    @age = age
    @town = town
  end

  def info
  end
  

  def heal(pokemon)
  end

end
