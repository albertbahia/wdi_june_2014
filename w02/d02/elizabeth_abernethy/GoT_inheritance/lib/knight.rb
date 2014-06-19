require_relative 'human.rb'
require_relative 'king.rb'

class Knight < Human

  attr_reader(:sword_name, :loyalty)

  def initialize(name, house, sword_name)
    super(name, house, strength)
    @house = house
    @hp = 500
    @sword_name = sword_name
    @strength = 50
    @loyalty = nil
  end

  def introduce()
    if @loyalty == nil
      return "Introducing the honorable knight, #{name} of House #{house}!"
    else
      return "Introducing the honorable knight, #{name} of House #{house}, loyal in service to King #{loyalty}!"
    end
  end


  def pledge_loyalty(king)
    if king.class.name == "King"
      @loyalty = king.name
      return true
    else
      false
    end
  end

  def king_name(king)
    if pledge_loyalty(king)
      puts("I #{name} vow my allegiance to #{king.name}")
      king.name
    else
      nil
    end
  end

end
