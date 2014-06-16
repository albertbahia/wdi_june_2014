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
    elsif hp >= 100
      @hp = 100
    else 
      @hp = hp
    end
  end

  def hp
    @hp
  end

  def list_stats
    
  end

end



