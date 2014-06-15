#require 'pry'

class Pokemon

  attr_reader(:name, :id, :poketype, :hp, :defense, :speed, :status)

  def initialize(name, id, poketype, hp, defense, speed, status)
    @name = name
    @id = id
    @poketype = poketype
    @hp = hp
    @defense = defense
    @speed = speed
    @status = status
  end

  def list_stats
    stats_string = "Poketype: #{poketype} HP: #{hp} Defense: #{defense} Speed: #{speed}"
  end

  def hp_max
    100
  end

  def restore_hp
    if hp < 100
      hp = hp_max
    end
  end

  def damage(damage_amt)
    if hp > 0
      hp = hp -= damage_amt
    end
  end

  def poke_status
    if hp <= 0
      status = false
    else
      status = true
    end
  end
end

poke1 = Pokemon.new("Cameron", 0, "water", 50, 25, 18, true)

#binding.pry
