require 'active_record'
require 'pry'

class Pokemon < ActiveRecord::Base
  has_and_belongs_to_many :trainers

  def whos_that_pokemon
    return self
  end

  def total_attack
    (0.5*self.attack.to_i)+(0.25*self.speed.to_i)-(0.2*self.defense.to_i)
  end

end

ActiveRecord::Base.establish_connection({
  adapter: 'postgresql',
  database: 'pokemon_db'
})

binding.pry
