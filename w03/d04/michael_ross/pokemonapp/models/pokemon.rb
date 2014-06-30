class Pokemon < ActiveRecord::Base
  has_and_belongs_to_many :trainers

def self.get_pokemon
  self.all.sample[6]
end


def whos_that_pokemon
  info_string = "Pokedex ID: #{self.id}\n #{self.name}, Classification: #{self.classification}\n"
  info_string += "Attack: #{self.attack} | Defense: #{self.defense} \n"
  info_string += "Speed: #{self.speed} | HP: #{self.hp}"
end

def total_attack
  return (attack / 2) + (speed / 4) - (defense / 5)
end

end
