class Pokemon
  #attr_reader(:name,:id,:poketype,:hp,:attack,:defense,:speed )
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
    return 100 if @hp > 100
    return 0 if @hp<= 0
    return @hp
  end

  def list_stats
    list_stats_info = "Name: #{@name}"
    list_stats_info = "id: #{@id}"
    list_stats_info = "poketype: #{@poketype}"
    list_stats_info = "hp: #{@hp}"
    list_stats_info = "attack: #{@attack}"
    list_stats_info = "defense: #{@defense}"
    list_stats_info = "speed: #{@speed}"

  end
end
