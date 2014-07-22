require_relative './human.rb'

class Knight < Human

  attr_accessor(:sword_name)
  def initialize(initial_name, initial_house, sword_name)
    super(initial_name, initial_house, 50)
    @sword_name = sword_name
    @hp = 500
  end

  def introduce
    "I am #{name} of house #{house} and I am an honorable knight."
  end


  def pledge_loyalty(king_object)
    if king_object.class == King
      true
    else
      false
    end
  end



  def king_name

  end





end
