class Pokemon
  attr_reader(:name, :id, :poketype, :hp, :attack, :defense, :speed)

  def initialize(name, id, poketype, hp, attack, defense, speed)
    @name = name
    @id = id
    @poketype = poketype
    @hp = hp
      if @hp > 100
        @hp = 100
      elsif @hp <= 0
        @hp = 0
      else
        @hp
      end
    @attack = attack
    @defense = defense
    @speed = speed
  end

  def list_stats
    "Name: #{name} Id: #{id} poketype: #{poketype} hp: #{hp} attack: #{attack} defense: #{defense} speed: #{speed}"
  end

end
