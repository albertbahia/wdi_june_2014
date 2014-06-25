require 'active_record'

class Pokemon < ActiveRecord::Base
  has_and_belongs_to_many :trainers

  def self.get_pokemon
    Pokemon.all.sample(6)
  end

  def whos_that_pokemon
    info = "ID: #{id}\n"
    info += "Name: #{name}\n"
    info += "Attack: #{attack}\n"
    info += "Defense: #{defense}\n"
    info += "Speed: #{speed}"
  end

  def total_attack
    ((attack * 0.5) + (speed * 0.25)- (defense * 0.2)).to_f
  end

end
