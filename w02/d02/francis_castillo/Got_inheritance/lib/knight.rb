#require 'pry'
require_relative('../lib/human.rb')
# require_relative('../lib/king.rb')
# require_relative('../lib/peasant.rb')
# require_relative('../lib/knight.rb')
class Knight < Human

  def initialize(name, house, sword_name)
    super(name, strength, hp)
    @house = house
    @sword_name = sword_name
    @strength = 50
    @hp = 500
    @king_name = nil

  end

  def house
    return @house
  end

  def sword_name
    @sword_name
  end

  def introduce
    intro = "I am the honorable knight #{name} from the #{house}"
    if @king_name != nil
      intro += " loyal to #{king_name}"
    else
      intro += ""
    end
  end

  def king_name
    if @king_name != nil
      return @king_name
    else
      return @king_name
    end
  end

  def pledge_loyalty(king_name)
    if king_name.class.name == "King"
      @king_name = king_name.name
      return true
    else
      return false
    end

  end
end

#binding.pry
