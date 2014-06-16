require 'pry'

class Pokemon

  attr_reader(:name,:id,:poketype,:hp,:attack,:defense,:speed)
  def initialize(name, id, poketype, hp, attack, defense, speed)
    @name = name
    @id = id
    @poketype = poketype
    @hp = hp
    @attack = attack
    @defense = defense
    @speed = speed
  end

  def list_stats
    list_info  = "Name: #{name.capitalize}\n"
    list_info += "ID: #{id}\n"
    list_info += "Poketype: #{poketype.capitalize}\n"
    list_info += "HP: #{hp}\n"
    list_info += "Attack: #{attack.capitalize}\n"
    list_info += "Defense: #{defense.capitalize}\n"
    list_info += "Speed: #{speed}"

  end

  def restore_health_points(hp_arg)
    @hp += hp_arg
  end

  def damage_hp(hp_arg)
    if @hp - hp_arg < 0
      @hp = 0
    elsif @hp - hp_arg > 0
      @hp -= hp_arg
    end
  end

  def give_status
    if @hp == 0
      puts "Status: Fainted \nHP: #{@hp}"
    elsif @hp <= 30 && @hp >= 1
      puts "Status: Low HP\nHP: #{@hp}"
    elsif @hp >=31 && @hp <= 69
      puts "Status: OK HP\nHP: #{@hp}"
    elsif @hp >69
      puts "Status: High HP\nHP: #{@hp}"
    end
  end
end

me = Pokemon.new("Picchu", 123, "electric", 75, "Fire", "Water", 10)

puts me.list_stats

binding.pry
