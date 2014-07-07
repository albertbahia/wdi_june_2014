class Pokemon
  attr_reader(:hp)
  def initialize(name, id, poketype, hp, attack, defense, speed)
    @name = name
    @id = id
    @poketype = poketype
    #tertiary operator
    #if hp gt 0 elsif hp gt 100 else hp
    @hp = hp < 0 ? 0 : hp > 100 ? 100 : hp
    @attack = attack
    @defense = defense
    @speed = speed
  end

  # def hp
  #   return 0 if @hp < 0
  #   return 100 if @hp > 100
  #   return @hp
  # end

  def stats
    "Name: "
  end
end
