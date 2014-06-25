require 'pry'
require_relative 'trainer_seed.rb'
require_relative 'trainer.rb'

8.times do
  new_trainer = get_trainer
  Trainer.create(
    name: new_trainer[0],
    age: new_trainer[1],
    hometown: new_trainer[2]
    )
end

# binding.pry
