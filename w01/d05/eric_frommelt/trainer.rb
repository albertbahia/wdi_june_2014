class Trainer
  attr_reader(:name, :age, :hometown, :pokemons)

  def initialize(name, age, hometown, pokemons)
    @name = name
    @age = age
    @hometown = hometown
    @pokemons = pokemons
  end

  public
  def list_trainer_info
    trainer_info = "Name: #{trainer_name} Age: #{age} Hometown: #{hometown}"
  end

  def add_pokemon

  end

  def list_pokemons

  end

end
