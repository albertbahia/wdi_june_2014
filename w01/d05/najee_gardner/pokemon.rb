require 'pry'

class Pokemon
  attr_reader :name, :id, :poketype, :hp, :status
  attr_reader :attack, :defense, :speed, :status

  def initialize(name, id, poketype, attack=0, defense=0, speed=0)
    @hp = 100
    @name = name
    @id = id
    @poketype = poketype
    @attack = attack
    @defense = defense
    @speed = speed
    @status = :awake
  end

  def list_stats
    stat_list = "=" * 15 + "\n"
    if id < 10
      stat_list << "00#{id}: "
    elsif id < 100
      stat_list << "0#{id}: "
    else
      stat_list << "#{id}: "
    end


    stat_list << "#{name.capitalize}\n"
    stat_list << "=" * 15

    stat_list << "\nType: "

    if poketype.length == 2
      stat_list << poketype.split.map(&:capitalize).join("/")
    else
      stat_list << poketype.first.to_s
    end

    stat_list << "\nHP: #{hp}\n"
    stat_list << "Attack: #{attack}\n"
    stat_list << "Defense: #{defense}\n"
    stat_list << "Speed: #{speed}\n"
    stat_list << "-" * 15

  end

  def restore_hp
    @hp = 100
  end

  def take_damage(damage)

    if hp > 0
      if hp > damage
        @hp -= damage
      else
        @hp = 0
        @status = :fainted
      end
    end

    status
  end

end

# pikachu = Pokemon.new("pikachu", 25, ["electric"], 23, 56, 75)
# squirtle = Pokemon.new("squirtle", 7, ["water"], 36, 74, 23)
# bulbasaur = Pokemon.new("bulbasaur", 1, ["grass", "poison"], 62, 38, 73)
#
# binding.pry
