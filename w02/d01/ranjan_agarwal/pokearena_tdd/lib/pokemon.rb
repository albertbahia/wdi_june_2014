class Pokemon
  attr_reader(:name,:id,:poketype,:hp,:attack,:defense,:speed)
  def initialize(name, id, poketype, hp, attack, defense, speed)
    @name = name
    @id = id
    @poketype = poketype
    if hp < 0
      @hp = 0
    elsif hp > 100
      @hp = 100
    else
      @hp = hp
    end
    @attack = attack
    @defense = defense
    @speed = speed
  end

  def list_stats
    "Name: #{@name}, id: #{@id}, poketype: #{@poketype}, hp: #{@hp}, attack: #{@attack}, defense: #{@defense}, speed: #{@speed}"
  end

  # def hp
  #   @hp
  # end
end
