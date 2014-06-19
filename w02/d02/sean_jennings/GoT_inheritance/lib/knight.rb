
class Knight < Human

  attr_reader(:name, :house, :sword)
  def initialize(name,house,sword)

    @name = name
    @house = house
    @sword = sword
    @strength = 50
    @hp = 500
    @allegiance = nil
  end
  def pledge_loyalty(king)
    if king.class == King
      @allegiance = king.name
      true
    else
      false
    end
  end

  def king_name()
    if @allegiance
      @allegiance
    end
  end

  def introduce
    "I'm #{name}, an honorable knight, from #{house}"
  end

end
