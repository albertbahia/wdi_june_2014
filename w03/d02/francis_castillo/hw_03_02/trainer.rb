require 'active_record'
require_relative 'pokemon.rb'
# require_relative 'poke_battle.rb'

class Trainer < ActiveRecord::Base
  has_and_belongs_to_many :pokemon

  def initialize()
      @poke_arr = []
  end

  def whos_that_trainer
    trnr_info = "ID: #{self.id} |"
    trnr_info += "Name: #{self.name} |"
    trnr_info += "Age: #{self.age} |"
    trnr_info += "Hometown: #{self.hometown} |"
    return trnr_info
  end

  def choose_pokemon(poke_arr)
    poke_arr << poke_arr
  end

  def poke_arr
    return @poke_arr
  end
end

ActiveRecord::Base.establish_connection ({
  database: 'pokemon_db',
  adapter: 'postgresql'
  })
