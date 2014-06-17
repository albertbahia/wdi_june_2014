require 'pry'

class Nurse
  attr_reader( :name, :age, :town)

  def initialize(name, age, town)
    @name = name
    @age = age
    @town = town

  end

  def list_info
    stats_string = "Name: #{name}"
    stats_string += " Age: #{age},"
    stats_string += " Town: #{town},"
  end

  def heal()
    #Sets a specific trainers' pokemons back to default 
    @hp_default
  end

end

joy = Nurse.new("Joy", 35, "New York City")
binding.pry
