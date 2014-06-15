require 'pry'

class Pokemon

  attr_reader :name, :id, :poketype, :hp, :attack, :defense, :speed

  def initialize(name, id, poketype, hp, attack, defense, speed)
    @name = name
    @id = id
    @poketype = poketype
    @hp = hp
    @attack = attack
    @defense = defense
    @speed = speed
  end

  def stats
    pokestats = ["name: #{name}", "id: #{id}", "poketype: #{poketype}",
      "hp: #{hp}", "attack #{attack}", "defense: #{defense}", "speed: #{speed}"]
  end

  def restore
    @hp = 100
  end

  def damage(damage_num)
    if hp > 0
      if hp >= damage_num
        @hp -= damage_num
      else
        @hp = 0
      end
    else @hp = 0
    end
  end

  def status
    if hp > 0
      return "hp: #{hp}/100"
    else
      return "fainted!"
    end
  end

end

pikachu = Pokemon.new("pikachu", 1, :lightning, 50, 20, 10, 20)


binding.pry



# All pokemon should be able to:
# - list their stats
# - fully restore their hp
# - take damage
#   - their hp should decrement
#   - unless their hp is 0
# - give their status
#   - fainted or not (hp of 0)
