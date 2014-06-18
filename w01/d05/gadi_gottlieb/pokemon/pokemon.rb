require 'pry'

class Pokemon

  attr_reader(:id, :poketype, :attack, :defense, :speed)

  def initialize(name, id, poketype, hp, attack, defense, speed)
    @name = name
    @id = id
    @poketype = poketype
    @hp = hp
    @attack = attack
    @defense = defense
    @speed = speed
  end

  def name
    @name.capitalize
  end

  def hp
    @hp > 100 ? @hp = 100 : @hp

  def list_stats
    stat_string = "My name is #{name},"
    stat_string += " my id is #{id} and I'm a #{poketype} type."
    stat_string += " HP: #{hp}, Attack: #{attack}, Defense: #{defense},"
    stat_string += " Speed: #{speed}."
  end

  def full_restore
    @hp = 100
  end

  def fainted?
    # ternary operator
    hp == 0 ? true :false
  end

  def take_damage
    if fainted?
      return false
    else
      @hp -= 10
      return true
    end
  end
  
