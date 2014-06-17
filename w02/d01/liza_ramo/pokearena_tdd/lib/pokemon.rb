class Pokemon


  def initialize(name, id, poketype, hp, attack, defense, speed)
    @name = name
    @id = id
    @poketype = poketype

    if hp < 0
      @hp = 0
    elsif hp > 100
      @hp = 100
    else @hp = hp
    end

    @attack = attack
    @defense = defense
    @speed = speed
  end

  def hp
    @hp
  end

  def list_stats
    stats_string = "Name: #{name}"
    stats_string += " ID: #{id},"
    stats_string += " Poketype: #{poketype},"
    stats_string += " HP: #{hp},"
    stats_string += " Speed: #{speed},"
    stats_string += " Attack: #{attack},"
    stats_string += " Defend: #{defend},"
  end


  # def hp
  #   return 0 if @hp < 0
  #   return 100 if @hp > 100
  #   return @hp
  # end


    # Longer syntax:
    # if @hp < 0
    #   return 0
    # elsif @hp >= 100
    #   return 100
    # else
    #   return @hp
    # end
  # end



  # def when_hp_over_max
  #   if @hp > 100
  #     return 100
  #   else
  #     return @hp
  #   end
  # end

end
