require 'active_record'
require 'pry'
require_relative './poke_seed.rb'
require_relative '../lib/trainer.rb'

ActiveRecord::Base.establish_connection({
    database: 'pokemon_db',
    adapter: 'postgresql'
})

8.times do
  new_trainer = get_trainer
  Trainer.create(
    name: new_trainer[0],
    age: new_trainer[1],
    hometown: new_trainer[2]
    )
end


# trainer_array = get_trainer
# trainer_array.map.shuffle do |trainer_info|
#   name = trainer_info[]
# end
