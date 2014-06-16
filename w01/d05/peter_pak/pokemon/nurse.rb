class Nurse

  attr_reader( :name, :age, :town)

  def initialize(name, age, town)
    @name = name
    @age = age
    @town = town
  end

  def list_info
    info_string = "Name: #{name} | "
    info_string += "Age: #{age} | "
    info_string += "Town: #{town}"
  end

  def heal_pokemon(trainer)
    trainer.heal_pokemon
  end



end
