# require 'pry'
require_relative 'human.rb'
require_relative 'king.rb'
class Knight < Human
  attr_reader(:sword_name,:king_name)
  def initialize(name,house,sword_name)
    super(name,house,strength)
    @strength = 50
    @sword_name = sword_name
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



  # def king_name(kings)
  #   if pledge_loyalty == true
  #     return King.name
  #   elsif pledge_loyalty == nil
  #     return nil
  #   else
  #     return new_king
  #   end
  # end

  def introduce
    super() + ". I am an honorable knight"
  end
end

# binding.pry
