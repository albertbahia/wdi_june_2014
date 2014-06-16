class Nurse
  attr_reader(:name, :age, :hometown)

  def initialize(name, age, hometown)
    @name = name
    @age = age
    @hometown = hometown
  end

  def list_nurse_info
    nurse_info = "Name: #{name} Age: #{age} Hometown: #{hometown}"
  end

  def heal_pokemons()

  end

end
