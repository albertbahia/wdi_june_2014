class Knight < Human

  attr_reader(:house, :sword)
  def initialize(name, house, sword)
    @name = name
    @house = house
    @sword = sword
    @strength = 50
    @hp = 500
    @loyalty = nil
  end

  def introduce
    "#{@name}, lives at #{@house}, and is an honorable knight"
  end

  def pledge_loyalty(king)
    king.class.name == "King"
  end

  def king_name(king)
    if pledge_loyalty(king)
      king.name
    else
      nil
    end
  end
end
