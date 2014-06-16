class Nurse

  attr_reader :name, :age, :town

  def initialize(name, age, town)
    @name = name
    @age = age
    @town = town
  end

  def list_info
    info = ["name: #{name}", "age: #{age}", "town: #{town}"]
  end

  def heal_trainer_pokemon(trainer)
    trainer.pokemons.each do |pokemon| pokemon.restore
    end
    #for each trainer's pokemon, restore the pokemon
  end

end






# #### Nurse class
# A nurse should have a:
# - name
# - age
# - town
#
# A nurse should be able to:
# - list their info
# - heal a trainer's pokemons
#   - hint: it should accept a single parameter
