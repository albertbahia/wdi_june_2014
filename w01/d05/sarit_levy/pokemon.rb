require 'pry'

class Pokemon

  attr_reader(:name, :id, :poketype, :hp, :attack, :defense, :speed)

  def initialize(name, id, poketype, hp, default, attack, defense, speed)
      @name = name
      @id = id
      @poketype = poketype
      @hp <= 100
      @attack = attack
      @defense = defense
      @speed = speed
  end

  def new
    @name = Pokemon.new
  end

binding.pry

end
