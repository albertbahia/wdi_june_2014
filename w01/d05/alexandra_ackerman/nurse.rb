class Nurse

  attr_reader(:name, :age, :town)

  def initialize(name, age, town)
    @name = name
    @age = age
    @town = town
  end

  def list_info
      info_string = "Name: #{name.capitalize}, "
      info_string += "Age: #{age}, "
      info_string += "Town: #{town.capitalize}"
  end

  def heal_pokemon(pokemon)
    pokemon = pokemon.map { |pokemon| pokemon.list_name }
    pokemon = pokemon.map { |pokemon| pokemon.restore_hp }
  end

end
