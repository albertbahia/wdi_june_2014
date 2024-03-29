class Pokemon

  #attr_reader(:name, :id, :poketype, :hp, :attack, :defense, :speed)
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
    "Name: #{@name}, ID: #{@id}, Poketype: #{@poketype}, HP: #{@hp}, Attack: #{@attack}, Defense:#{@defense}, Speed: #{@speed}"
  end
end
