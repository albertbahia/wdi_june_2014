require 'active_record'
require_relative 'trainer.rb'
require 'pry'

ActiveRecord::Base.establish_connection({
  database: 'pokemon_db',
  adapter: 'postgresql'
  })

# trainer_names = %w(Ash Misty Brock Gary Lorelei Bruno Agatha Lance)
# trainer_ages = [10,13,15,25,76,32,89,345,21,9001]
# trainer_hometown = ['Pallet Town','Saffron City', 'Cerulean City','Celadon City', 'Cinnabar Island', 'Fuschia City', 'Goldenrod City']
#
# 12.times do |new_trainer|
#   new_trainer = Trainer.create({
#     name: trainer_names.sample,
#     age: trainer_ages.sample,
#     hometown: trainer_hometown.sample
#     })
#   end

binding.pry
