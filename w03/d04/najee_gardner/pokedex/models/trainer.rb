class Trainer < ActiveRecord::Base
  has_and_belongs_to_many :pokemons

  def whos_that_trainer
    trainer_info = "---------------------\n"
    trainer_info << "Trainer #{name}\nAge: #{age} | "
    trainer_info << "Hometown: #{hometown}\n"
    trainer_info << "---------------------\n"
  end

  def choose_pokemon(pokemon_arr)
    pokemon_arr.each do |pkmn|
      self.pokemons << pkmn
    end
  end
end
