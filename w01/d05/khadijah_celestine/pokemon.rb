# pokemon.rb
# Khadijah HW 5
# June 15, 2014

class Pokemon
  attr_reader(:name, :id, :poketype, :attack, :defense, :speed, :hp)

  def initialize(name, id, poketype, attack, defense, speed)
    @name = name
    @id = id
    @poketype = poketype
    @attack = attack
    @defense = defense
    @speed = speed
    restore
  end

  def to_s()
    name + id.to_s + poketype + attack.to_s + defense.to_s + speed.to_s + hp.to_s
  end

  def stats()
    return_array = []
    return_array.push("Pokemon Name: " + @name)
    return_array.push("Pokemon ID: " + @id.to_s)
    return_array.push("Pokemon HP: " + @hp.to_s)
    return_array.push("Pokemon Poketype: " + @poketype)
    return_array.push("Pokemon Attack: " + @attack.to_s)
    return_array.push("Pokemon Defense: " + @defense.to_s)
    return_array.push("Pokemon Speed: " + @speed.to_s)

    return_array
  end

  def restore()
    @hp = 100
  end

  def damage(amt)
    @hp -= amt
    0 if amt > @hp
  end

  def decrement()
    @hp -= 1 unless fainted?
  end

  def fainted?()
    @hp == 0 ? true : false
  end
end
