class Pokemon < ActiveRecord::Base
  has_and_belongs_to_many :trainers

  def self.get_pokemon
    six_pkmns = []
    6.times do
      six_pkmns << self.order("RANDOM()").limit(1)
    end
    six_pkmns
  end

  def whos_that_pokemon
    pkmn_info = "---------------------\n"
    if id / 10 < 1
      pkmn_info << "00#{id} "
    elsif id / 100 < 1
      pkmn_info << "0#{id} "
    else
      pkmn_info << "#{id} "
    end
    pkmn_info << "#{name.capitalize}\n"
    pkmn_info << "HP: #{hp} | "
    pkmn_info << "ATK: #{attack} | DEF: #{defense} | SPD: #{speed}\n"
    pkmn_info << "---------------------\n"
  end

  def total_attack
    (attack * 0.5) + (speed * 0.25) - (defense * 0.2)
  end
end
