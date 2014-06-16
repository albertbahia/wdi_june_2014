<<<<<<< HEAD
class Pokemon

  attr_reader(:id, :poketype, :attack, :defense, :speed)

  def initialize(name, id, poketype, hp, attack, defense, speed)
    @name = name
    @id = id
    @poketype = poketype
=======
# require 'pry'

class Pokemon

  attr_reader(:name, :id, :type, :hp, :attack, :defense, :speed)

  def initialize(name, id, type, hp, attack, defense, speed)
    @name = name
    @id = id
    @type = type
>>>>>>> e2df5c5e2b8622c95d7da79a5c5d6337a8293176
    @hp = hp
    @attack = attack
    @defense = defense
    @speed = speed
  end

<<<<<<< HEAD
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
=======
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
>>>>>>> e2df5c5e2b8622c95d7da79a5c5d6337a8293176
  end

end
