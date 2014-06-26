require 'active_record'
require 'pry'
require_relative 'lib/trainer.rb'

ActiveRecord::Base.establish_connection({
  adapter: 'postgresql',
  database: 'pokemon_db'
})

  trainer_array = [
    [trainer_names = %w(Ash Misty Brock Gary Lorelei Bruno Agatha Lance)],
    [trainer_ages = [10,13,15,25,76,32,89,345,21,9001]],
    [trainer_hometown = ['Pallet Town','Saffron City', 'Cerulean City','Celadon City',
        'Cinnabar Island', 'Fuschia City', 'Goldenrod City']]
    ]


10.times do
  Trainer.create({
    name: trainer_array[0].sample,
    age: trainer_array[1].sample,
    hometown: trainer_array[2].sample
  })
end



binding.pry
