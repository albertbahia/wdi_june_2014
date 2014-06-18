require_relative('human.rb')

class Knight < Human
  attr_reader(:sword, :pledge_loyalty, :loyal_to)

  def initialize(name, house, sword)
    @name = name
    @house = house
    @sword = sword
    @strength = 50
    @hp = 500
    @pledge_loyalty = pledge_loyalty
    @loyal_to = king
  end

  def pledge_loyalty(loyal_to)
    if loyal_to = king
      return true
    else
      return false
    end

  end



end
