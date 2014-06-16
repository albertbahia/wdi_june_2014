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
    restore()
  end

  def to_s()
    return @name, @id, @poketype, @attack, @defense, @speed, @hp
  end

  def stats()
    return "Name: " + @name,
           "ID: " + @id.to_s,
           "HP: " + @hp.to_s,
           "Poketype: " + @poketype,
           "Attack: " + @attack.to_s,
           "Defense: " + @defense.to_s,
           "Speed: " + @speed.to_s
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
