# require 'pry'

class Pokemon

  attr_reader(:name, :id, :type, :hp, :attack, :defense, :speed)

  def initialize(name, id, type, hp, attack, defense, speed)
    @name = name
    @id = id
    @type = type
    @hp = hp
    @attack = attack
    @defense = defense
    @speed = speed
  end

  def list_stats
    stats = "Name: #{name.capitalize}\n"
    stats += "ID: #{id.to_i}\n"
    stats += "Type: #{type.capitalize}"
    stats += "HP: #{hp.to_i}"
    stats += "Attack: #{attack.to_i}"
    stats += "Defense: #{defense.to_i}"
    stats += "Speed: #{speed.to_i}"
  end

  def restore_hp(restore)
    if :hp < 100
      @hp = restore
    else
      return @hp
  end

  def take_damage
    return :hp - 10
  end

  def give_status
    if pokemon_hp == 0
      return "#{name} has fainted."
    else
      return "#{hp}"
  end

end
