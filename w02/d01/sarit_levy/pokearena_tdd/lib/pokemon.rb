class Pokemon

  def initialize(name, id, poketype, hp, attack, defense, speed)
    @name = name
    @id = id
    @poketype = poketype
    @attack = attack
    @defense = defense
    @speed = speed

    if hp < 0  #can
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
  #or can write:
  # def hp
  #   return 0 if @hp < 0
  #   return 100 if @hp > 100
  #   return @hp
  # end


  def list_stats
  "Name: #{@name}\n, id: #{@id}\n, poketype: #{@poketype}\n, hp: #{@hp}\n, attack: #{@attack}\n, defense:#{@defense}\n, speed:#{@speed}\n"
  end

end
