require 'active_record'

class Trainer < ActiveRecord::Base

  def whos_the_trainer(trainer_select)
    trainer_stats = Pokemon.find_by(id: trainer_select)
    stat1 = trainer_stats[:id]
    stat2 = trainer_stats[:name]
    stat3 = trainer_stats[:age]
    stat4 = trainer_stats[:hometown]
    puts("id: #{stat1}\n name: #{stat2}\n age: #{stat3}\n hometown: #{stat4}")
  end

  def choose_pokemon(arr_of_pokemon)
    trainers_pokemon = []
    trainers_pokemon << arr_of_pokemon
  end

end

ActiveRecord::Base.establish_connection({
  adapter: 'postgresql',
  database: 'pokemon_db'
  })
