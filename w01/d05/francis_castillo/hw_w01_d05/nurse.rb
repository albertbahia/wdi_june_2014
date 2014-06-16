#require_relative 'pokemon.rb'
# require_relative 'trainer.rb'
#require 'pry'


class Nurse

  def initialize(name, age, town)
    @name = name
    @age = age
    @town = town
  end

  def list_trainer_info
    trainer_info  = "Name: #{name}\n"
    trainer_info += "Age: #{age}\n"
    trainer_info += "Town: #{town}"
  end

  def heals_pokemon(arr,num)
    arr.each {|x|
      $pokemon[0][x.downcase.to_sym].restore_health_points(num)
      }
  end

end


#binding.pry
