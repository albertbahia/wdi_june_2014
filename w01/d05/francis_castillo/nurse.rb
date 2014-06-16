# require_relative 'pokemon.rb'
# require_relative 'trainer.rb'
# require 'pry'


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

  def heal_pokemon(me,num)
    me.restore_health_points(num)
  end

end


# binding.pry
