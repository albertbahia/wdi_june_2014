require 'active_record'

class Pokemon < ActiveRecord::Base
  has_and_belongs_to_many :trainers

  def get_pokemon
    Pokemon.where( {id: random} ).
  end

  def whos_that_pokemon
  end

  def total_attack
  end



end

ActiveRecord::Base.establish_connection({
  adapter: 'postgresql',
  database: 'pokemon_db'
})
