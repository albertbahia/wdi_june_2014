#require 'pry'

class Pokemon

  attr_reader(:pokemon_name, :id, :poketype, :hp, :attack, :defense, :speed)

  def initialize(pokemon_name, id, poketype, hp, attack, defense, speed)
    @pokemon_name = pokemon_name
    @id = id
    @poketype = poketype
    @hp = hp
    @attack = attack
    @defense = defense
    @speed = speed
  end

  def list_stats
    stat_string = "Name: #{pokemon_name} "
    stat_string += "Id: #{id} "
    stat_string += "Pokemon Type: #{poketype} "
    stat_string += "HP: #{hp} "
    stat_string += "Attack: #{attack} "
    stat_string += "Defense: #{defense} "
    stat_string += "Speed: #{speed}"
  end

  def restore_hp
    @hp = @hp + 10
  end

  def damage
    if @hp <= 0
      return "Cannot Decrease HP"
    else
      @hp = @hp - 10
    end
  end

  def status
    if @hp <= 0
      return "Your Pokemon has fainted! Call a nurse!"
    else
      "Your Pokemon is ok!"
    end
  end


end


#binding.pry
