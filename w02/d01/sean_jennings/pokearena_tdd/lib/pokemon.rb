class Pokemon

  def initialize(name, id, poketype, hp, attack, defense, speed)
    @name = name
    @id = id
    @poketype = poketype
    @hp = hp
    @attack = attack
    @defense = defense
    @speed = speed
  end

  def hp
    if @hp < 0
      @hp = 0
    elsif @hp <= 100
     @hp
    else
      100
    end
  end
end
