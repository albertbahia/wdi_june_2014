class Pokemon

  # attr_reader( :name, :id, :poketype, :hp, :attack, :defense, :speed)

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

  # def hp
  #   return 0 if @hp < 0
  #   return 100 if @hp >= 100
  #   return @hp
    # if @hp < 0
    #   0
    # elsif @hp >= 100
    #   100
    # else
    #   @hp
    # end
  # end

  def hp
    @hp
  end

  def list_stats
    "Name: #{@name}\n, ID: #{@id}\n, Poketype: #{@poketype}\n, HP: #{@hp}\n, Attack: #{@attack}\n, Defense: #{@defense}\n, Speed: #{@speed}\n"
  end

end
