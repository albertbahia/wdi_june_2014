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

  def calculate_hp(initial_hp, final_hp)
    restore = 100
    initial_hp = pokemon.hp
    difference = restore - initial_hp
    final_hp = initial_hp + difference
    return final_hp
  end

  def take_damage(hp, amount_of_damage)
    hp = pokemon.hp
    final_hp = hp - amount_of_damage
    return final_hp
  end

  def get_status(take_damage_hp)

  end
end
