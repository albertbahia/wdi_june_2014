class Pokeman

  attr_reader(:name, :id, :poketype, :hp, :attack, :defense, :speed)
  #string   num   string    num    string   string   num
  def initialize(initial_name, initial_id, initial_poketype, initial_hp, initial_attack, initial_defense, initial_speed)
    @name = initial_name
    @id = initial_id
    @poketype = initial_poketype
    @hp = initial_hp
    @attack = initial_attack
    @defense = initial_defense
    @speed =  initial_speed
  end

  def poke_info()
    poke_info_list = "#{name} "
    poke_info_list += "ID# #{id}, "
    poke_info_list += "Type: #{poketype}, "
    poke_info_list += "Attack: #{attack}, "
    poke_info_list += "Defense: #{defense}, "
    poke_info_list += "Speed: #{speed}, "
    poke_info_list += "Current HP: #{hp}"
  end

  # def damaged(attack_strength) ##expecting integer
  #   attack_strength.to_i
  #   hp = hp - attack_strength
  # end


  def fainted?
    if hp > 0
      return false
    else hp <= 0
      return true
    end
  end


end #Class creation
