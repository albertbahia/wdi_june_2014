class Nurse

  attr_reader(:age, :town)

  def initialize(name, age, town)
    @name = name
    @age = age
    @town = town
  end

  def name
    return @name.capitalize
  end

  def list_info
    info_string = "My name is Nurse #{name}, "
    info_string += " Age: #{age}, from #{town}"
  end

  def heal_pokemon(trainer)
    trainer.pokemons.each { |pokemon| pokemon.full_restore }
  end

end
