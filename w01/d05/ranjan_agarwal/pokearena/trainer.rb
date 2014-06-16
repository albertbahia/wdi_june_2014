require 'pry'
class Trainer
  attr_reader(:trainer_name, :age, :hometown, :trainer_pokemon)
  def initialize(trainer_name, age, hometown, trainer_pokemon)
    @trainer_name    = trainer_name
    @age             = age
    @hometown        = hometown
    @trainer_pokemon = trainer_pokemon
  end

  def add_new_pokemon(pokemon)
    trainer_pokemon.push(pokemon)
    puts "Congrats on your new Pokemon!!!"
  end
  
end

def trainer_info(trainer)
    puts "=" * 50
    puts "Name: #{trainer.trainer_name}"
    puts "Age: #{trainer.age}"
    puts "Hometown: #{trainer.hometown}"
    puts "Pokemon: #{trainer.trainer_pokemon}"
    puts "=" * 50
end

# ash = Trainer.new("Ash Ketchup", 10, "Pallet Town",["Pikachu", "Blastoise"])
# binding.pry
