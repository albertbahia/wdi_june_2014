class Knight < Human

  attr_reader(:house, :sword, :loyalty)
  def initialize(name, house, sword)
    @name = name
    @house = house
    @sword = sword
    @strength = 50
    @hp = 500
    @loyalty = nil
  end

  def introduce
    if @loyalty
      "#{@name}, lives at #{@house}, and is an honorable knight, and is loyal to #{loyalty}"
    else
      "#{@name}, lives at #{@house}, and is an honorable knight, and is loyal to"
    end
  end

  def pledge_loyalty(king)
    if king.class.name == "King"
      @loyalty = king.name
      true
    else
      false
    end
  end

  def king_name(king)
    if pledge_loyalty(king)
      king.name
    else
      nil
    end
  end
end
