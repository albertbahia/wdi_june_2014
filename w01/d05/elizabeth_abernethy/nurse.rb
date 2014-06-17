<<<<<<< HEAD
class Nurse

  attr_reader(:age, :town)

  def initialize()
=======
# require 'pry'

class Nurse

  attr_reader(:name, :age, :town)

  def initialize(name, age, town)
>>>>>>> e2df5c5e2b8622c95d7da79a5c5d6337a8293176
    @name = name
    @age = age
    @town = town
  end

<<<<<<< HEAD
  def name
    return @name.capitalize
  end

  def list_info
    info_string = "My name is Nurse #{name},"
    info_string += " Age: #{age}, from #{town}"
  end

  def heal_pokemon(trainer)
    trainer.pokemons.each {|pokemon| pokemon.full_restore }
=======
  def list_info
    info = "Name: #{name}"
    info += "Age: #{age}"
    info += "Town: #{town}"
  end

  def heal(hp)
    if hp < 0
      return (hp)
    else
    :hp = hp
>>>>>>> e2df5c5e2b8622c95d7da79a5c5d6337a8293176
  end

end
