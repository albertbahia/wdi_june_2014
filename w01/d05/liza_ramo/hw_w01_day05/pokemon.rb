require 'pry'

class Pokemon

  attr_reader( :name, :id, :poketype, :hp_default, :hp_max, :speed, :attack, :defend)

  def initialize(name, id, poketype, hp_default, hp_current, speed, attack, defend)
    @name = name
    @id = id
    @poketype = poketype
    @hp_default = hp_default
    @hp_current = hp_default
    @speed = speed
    @attack =  attack
    @defend = defend
  end

  def list_stats
    stats_string = "Name: #{name}"
    stats_string += " ID: #{id},"
    stats_string += " Poketype: #{poketype},"
    stats_string += " HP Default Level: #{hp_default},"
    stats_string += " Current HP Level: #{hp_default},"
    stats_string += " Speed: #{speed},"
    stats_string += " Attack: #{attack},"
    stats_string += " Defend: #{defend},"
  end


  def full_restore_hp
    @hp_default
  end


  def take_damage
    @hp_current -= 5
  end


  def give_status
    if @hp_current > 0
      puts("Current HP Status: Not fainted.")
    elsif @hp_current == 0
      puts("Current status: Fainted")
    end

  end


end

pikachu = Pokemon.new("Pikachu",3,"Fuzzy",20,20,2,5,5)
binding.pry
