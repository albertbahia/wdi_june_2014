require_relative 'human.rb'
require_relative 'king.rb'

class Knight < Human

  attr_reader(:sword, :king_name)

  def initialize(name, house, sword)
    super(name, house, hp)
    @sword = sword
    @strength = 50
    @hp = 500
    @king_name = nil
  end

  def pledge_loyalty(kings)
    if kings.class == King
      @king_name = kings.name
      return true
    else
      return false
    end
  end

  # def king_name
  #   if pledge_loyalty == true
  #     return
  #   elsif pledge_loyalty == nil
  #     return nil
  #   else
  #     return
  #   end
  # end

  def introduce
    return "I am #{name} of house #{house} and I am an honorable knight."
  end

end
