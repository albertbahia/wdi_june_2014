require 'pry'

class Pokemon

  attr_reader( :name, :id_number, :type, :hp, :rating_att, :rating_def, :rating_spd)

  def initialize(name, id_number, type, hp, rating_att, rating_def, rating_spd)
    @name = name
    @id_number = id_number
    @type = type
    @hp = hp
    @rating_att = rating_att
    @rating_def = rating_def
    @rating_spd = rating_spd
  end

  def list_stats
    stats_string = "Name: #{name}, "
    stats_string += "ID: ##{id_number}, "
    stats_string += "Type: #{type}, "
    stats_string += "HP: #{@hp}, "
    stats_string += "Attack: #{rating_att}, "
    stats_string += "Defense: #{rating_def}, "
    stats_string += "Speed: #{rating_spd}, "
  end

  def take_damage(how_much)
    if @hp - how_much <= 0
      @hp = 0
    else
      @hp = @hp - how_much
    end
  end

  def restore_hp
    @hp = 100
    restore_string = "#{name}: #{hp}hp"
  end

  def status
    if @hp == 100
      status_string = "#{name} -- Status: Perfect!"
    elsif @hp < 100 && @hp > 74
      status_string = "#{name} -- Status: Strong"
    elsif @hp <= 74 && @hp > 49
      status_string = "#{name} -- Status: Pretty Good"
    elsif @hp <= 49 && @hp > 24
      status_string = "#{name} -- Status: Not doing so hot."
    elsif @hp <= 24 && @hp > 0
      status_string = "#{name} -- Status: GET HELP STAT!"
    else
      status_string = "#{name} -- Status: RIP =["
    end
  end


end
