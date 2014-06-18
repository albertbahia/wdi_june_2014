require_relative './human.rb'
require_relative './king.rb'

class Knight < Human

  attr_reader :sword, :king

  def initialize(name, house, sword)
    super(name, house, 50)
    @hp = 500
    @sword = sword
    @king = nil
  end

  def pledge_loyalty(king)
    if king.class == King
      @king = king
    end
    king.class == King ? true : false
  end

  def king_name()
    king != nil ? king.name : nil
  end

  def introduce()
    return_string = "Introducing to Westeros, the honorable knight #{name}, "
    return_string += "from the house of #{house} - "
    if king != nil
      return_string += "loyal to #{king.name} of the #{king.house}!"
    else
      return_string += "loyalty unpledged!!"
    end
  end

end
