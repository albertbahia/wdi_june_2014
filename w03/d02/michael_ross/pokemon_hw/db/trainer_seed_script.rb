require 'active_record'
require 'pry'
require_relative './trainer_seed'
require_relative '../lib/trainer'

ActiveRecord::Base.establish_connection({
  database: 'pokemon_db',
  adapter: 'postgresql'
})


10.times do
  new_trainer = poke_trainer()
  Trainer.create(
    name: new_trainer[0],
    age: new_trainer[1],
    hometown: new_trainer[2]
    )
end

binding.pry
