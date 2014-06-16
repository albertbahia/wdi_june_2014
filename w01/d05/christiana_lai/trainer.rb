class Trainer

  attr_reader(:name, :age, :hometown, :pokemon)

  def initialize(name, age, hometown, pokemon)
    @name = name
    @age = age
    @hometown = hometown
    @pokemon = pokemon
  end

  def list_info
    info_string = "Name: #{name},"
    info_string += "Age: #{age},"
    info_string += "Hometown: #{hometown},"
    info_string += "Pokemon: #{pokemon}"
  end

  def add_pokemon (current_amount_pokemon, desired_amount)
    pokemon = current_amount_pokemon 4


    return
  end
end
