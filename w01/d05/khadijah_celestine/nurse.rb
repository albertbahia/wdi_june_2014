# nurse.rb
# Khadijah HW 5
# June 15, 2014

class Nurse
  attr_reader(:name, :age, :town)

  def initialize(name, age, town)
    @name = name
    @age = age
    @town = town
  end

  def to_s
    name + age.to_s + town
  end

  def info
    return_array = []
    return_array.push("Nurse Name: " + @name)
    return_array.push("Nurse Age: " + @age.to_s)
    return_array.push("Nurse town: " + @town)

    return_array
  end

  def heal(trainer)
    trainer.pokemons.each { |pokemon| pokemon.restore }
  end
end
