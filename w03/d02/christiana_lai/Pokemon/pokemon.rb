require_relative 'trainer.rb'

class Pokemon < ActiveRecord::Base
  has_and_belongs_to_many :trainers

  def self.get_pokemon
    Pokemon.all.sample(6)
  end

  def whos_that_pokemon
    "ID: #{self.id}, Name: #{self.name}, HP: #{self.hp}, Attack #{self.attack}, defense #{self.defense}, and Speed #{self.speed}"
  end

  def total_attack
    (attack * 0.5) + (speed * 0.25) - (defense * 0.2)
  end
end
