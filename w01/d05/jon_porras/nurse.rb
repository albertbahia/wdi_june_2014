#require 'pry'

class Nurse

  attr_reader(:nurse_name, :nurse_age, :town)

  def initialize(nurse_name, nurse_age, town)
    @nurse_name = nurse_name
    @nurse_age = nurse_age
    @town = town
  end

  def list_info
    info_string = "Name: #{nurse_name} "
    info_string += "Age: #{nurse_age} "
    info_string += "Town: #{town} "
  end

  def heal(pokemon)
    hp_healed = pokemon.hp + 10
    pokemon.instance_variable_set(:@hp, hp_healed)
  end

end




#binding.pry
