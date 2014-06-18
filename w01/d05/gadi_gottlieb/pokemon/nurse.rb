require 'pry'

class Nurse

  attr_reader(:age, :hometown)

  def initialize (name, age, hometown)
      @name = name
      @age = age
      @hometown = hometown
  end

  def name
    return @name.capitalize
  end

  def nurses_info
    info_string = "Name: #{name.capitalize},"
    info_string += " Age: #{age},"
    info_string += " Hometown: #{hometown.capitalize}"
  end

  def heal_pokemon(trainer)
    trainer.pokemons.each { |pokemon| pokemon.full_restore }
  end

end
