class Pokemon

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

  def hp
      @hp
  end

  def list_stats
    "Name: #{@name}, id: #{@id}, poketype: #{@poketype}, hp: #{@hp}, attack: #{@attack}, defense: #{@defense}, speed: #{@speed}."
  end
    # if @hp > 100
    #   100
    # elsif @hp <= 0
    #   0
    # else
    #   @hp
    # end
  # end

end

# pikachu = Pokemon.new("pikachu", 25, "electric", 50, 60, 40, 80)
# charizard = Pokemon.new("charizard", 9, :fire, 150, 60, 40, 80)
