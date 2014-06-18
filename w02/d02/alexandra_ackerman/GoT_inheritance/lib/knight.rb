require_relative "king.rb"

class Knight < Being

  attr_reader(:house, :sword_name, :loyalty)
  def initialize(name, house, sword_name)
    super(name, strength)
    @house = house
    @sword_name = sword_name
    @strength = 50
    @hp = 500
    @loyalty = nil
  end


  def pledge_loyalty(king)
    if king.class.name == "King"
      @loyalty = king.name
      return true
    else
      return false
    end
  end

  def king_name(king)
    if pledge_loyalty(king)
      puts("I pledge my allegiance to #{loyalty}")
      return king.name
    else
      return nil
    end
  end

  def introduce()
    if pledge_loyalty = true
      return ("Introducing the honorable knight, #{name} of house #{house},  loyalty to #{loyalty}.")
    else
      return ("Introducing the honorable knight, #{name} of house #{house}.")
    end
  end

end
