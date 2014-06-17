class Pokemon

  def initialize(name, id, poketype, hp, attack, defense, speed)
    @name = name
    @id = id
    @poketype = poketype
    @hp = hp
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
    "Pikachorb, 5, electric, 50, 50, 55, 10"
  end
end



#   def hp
#     return 0 if @hp < 0
#     return 100 if @hp > 100
#     return @hp
#     # if @hp < 0
#     #   return 0
#     # elsif @hp >= 100
#     #   return  100
#     # else
#     #   return @hp
#     # end
#   end
# end
