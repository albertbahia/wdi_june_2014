class Pokemon < ActiveRecord::Base
  has_and_belongs_to_many :trainers

 def self.get_pokemon
    return self.all.sample(6)
  end

  def whos_that_pokemon
    info_string = "Pokedex ID: #{self.id}\n #{self.name}, the #{self.classification}\n"
    info_string += "ATT: #{self.attack} | DEF: #{self.defense} \n"
    info_string += "SP: #{self.speed} | HP: #{self.hp}"
  end

  def total_attack
    return ( 0.5 * attack() ) + ( 0.25 * speed() ) - ( 0.2 * defense() )
  end

end
