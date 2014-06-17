class Nurse

  attr_reader(:name, :age, :town)

  def initialize(name, age, town)
    @name = name
    @age = age
    @town = town
  end

  def list_info
    info_string = "Nurse: #{name},"
    info_string += "Age: #{age},"
    info_String += "Town: #{town},"
  end

  def calculate_hp(restore_hp, hp)
    restore = 100
    initial_hp = pokemon.hp
    difference = restore - initial_hp
    final_hp = initial_hp + difference
    return final_hp
  end

end
