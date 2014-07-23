require 'pry'

class Pokemon

  attr_reader(:name, :id, :poketype, :hp, :attack, :defense, :speed)

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
    info_string = "| Name: #{name} | "
    info_string += "ID: #{id} | "
    info_string += "Poketype: #{poketype} | "
    info_string += "HP: #{hp} | "
    info_string += "Attack: #{attack} | "
    info_string += "Defense: #{defense} | "
    info_string += "Speed: #{speed} |"
  end

  def full_restore
    @hp = 100
  end
  

  def restore_hp
    if @hp >= 0
      @hp = @hp + (100 - @hp) unless @hp == 100
    end
  end

  def take_damage(damage_points)
    if @hp - damage_points >= 0
      @hp = @hp - damage_points unless @hp == 0
    else
      @hp = 0
    end
  end

  def show_status
    if @hp > 0
      puts("#{name} has enough hp to keep battling")
    elsif @hp == 0
      puts("#{name} cannot continue battling because he has fainted!")
    end
  end


end

pokemons = [
pikachu = Pokemon.new("Pikachu", 1, "fighting", 99, "hit", "block", 78),
charzar = Pokemon.new("Charzar", 2, "defender", 45, "swipe", "jump", 44),
poliwhirl = Pokemon.new("Poliwhirl", 3, "amphibious", 50, "slime", "swim away", 99),
growlithe = Pokemon.new("Growlithe", 4, "fluffy", 50, "bite", "bark", 33),
arcanine = Pokemon.new("Arcanine", 5, "canine", 0, "flame", "smoke", 57),
golduck = Pokemon.new("Golduck", 6, "platypus", 0, "slap", "swim", 35),
bulbasaur = Pokemon.new("Bulbasaur", 7, "dinasaur", 23, "stomp", "hide", 24),
turtwig = Pokemon.new("Turtwig", 8, "turtle", 36, "bite", "swim", 68)
]

binding.pry
