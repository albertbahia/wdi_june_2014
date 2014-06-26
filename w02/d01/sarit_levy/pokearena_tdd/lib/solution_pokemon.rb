#solution to pokemon.rb

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
  end

  # --- checks for variable name > THEN checks for a method name
  # --- self.name > syntax forces it to be a method and use it on whatever the method was called on
  def list_stats()
    stat_string = "My name is #{name},"
    stat_string += " my ID is #{id}, and I'm a #{poketype} type pokemon."
    stat_string += " HP: #{hp}, ATT: #{attack}, DEF #{defense}"
    stat_string += "SP: #{speed}"
  end

  def full_restore
    @hp = 100
  end

  # --- common practice: predicate method - if it returns T/F
  def fainted?
    # -- ternary operator
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
