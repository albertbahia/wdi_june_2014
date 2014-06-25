require 'active_record'

class Pokemon < ActiveRecord::Base

  has_and_belongs_to_many(:trainerspsql)

  def self.get_pokemon()
    array = [0, 1, 2, 3, 4, 5].map do
      random_id = Random.new.rand(1..151)
      random_pokemon = Pokemon.find_by(id: random_id)
    end
  end

  def whos_that_pokemon()
    return_string = "id: #{id} \n"
    return_string += "Name: #{name} \n"
    return_string += "HP: #{hp} \n"
    return_string += "Attack: #{attack} \n"
    return_string += "Defense: #{defense} \n"
    return_string += "Speed: #{speed} \n"
  end

  def total_attack()
    x1 = attack * 0.5
    x2 = speed * 0.25
    x3 = defense * 0.2
    x1 + x2 - x3
  end

end
