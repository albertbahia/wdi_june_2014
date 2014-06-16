class Pokemon

  attr_reader(:id, :poketype, :attack, :defense, :speed)
  def initialize(name, id, poketype, hp, attack, defense, speed)
    @name = name
    @id = id
    @poketype = poketype
    @attack = attack
    @defense = defense
    @speed = speed

    if hp < 0
      @hp = 0
    elsif hp > 100
      @hp = 100
    else
      @hp = hp
    end
  end

  def name
    @name.capitalize
  end

  def hp
    @hp
  end

  def list_stats()
    stat_string = "My name is #{name},"
    stat_string += " my id is #{id} and I'm a #{poketype} type."
    stat_string += " HP: #{hp}, ATT: #{attack}, DEF #{defense} "
    stat_string += "SP: #{speed}"
  end

  def full_restore
    @hp = 100
  end

  def fainted?
    # ternary operator
    hp == 0 ? true : false
  end

  def take_damage
    if fainted?
      return false
    else
      @hp -= 10
      return true
    end
  end

end
