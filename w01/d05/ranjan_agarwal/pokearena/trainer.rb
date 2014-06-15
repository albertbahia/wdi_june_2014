require 'pry'
class Trainer
  attr_reader(:trainer_name, :age, :hometown, :trainer_pokemon)
  def initialize(trainer_name, age, hometown, trainer_pokemon)
    @trainer_name    = trainer_name
    @age             = age
    @hometown        = hometown
    @trainer_pokemon = trainer_pokemon
  end

  


end

# ash = Trainer.new("Ash Ketchup", 10, "Pallet Town",["Pikachu", "Blastoise"])
# binding.pry
