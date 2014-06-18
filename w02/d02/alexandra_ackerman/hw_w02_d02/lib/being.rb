class Being

  attr_reader(:name)

  def initialize(name, hp)
    @name = name
    @hp = hp
    @foods_eaten = []
  end

  def hp()
    if @hp < 0
      return 0
    else
      return @hp
    end
  end

  def eat(food)
    @foods_eaten.push(food)
  end

  def take_damage(damage)
    if damage > 0
      @hp = [@hp - damage].max
    end
  end


end
