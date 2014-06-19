#require 'pry'

require_relative './human.rb'

class Knight < Human

  attr_reader(:sword_name, :king_name)
  def initialize(initial_name, initial_house, initial_sword_name)
    super(initial_name, initial_house, 50)
    @sword_name = initial_sword_name
    @hp = 500
    @king_name = nil
  end

  def introduce
    if king_name == nil
      "I am #{@name.capitalize}, of House #{@house.capitalize}, and I am an honorable knight."
    else
      "I am #{@name.capitalize}, of House #{@house.capitalize}, and I am an honorable knight of King #{@king_name}."
    end
  end

  def pledge_loyalty(king_pledged_to)
    if king_pledged_to.class == King
      king_object = king_pledged_to
      @king_name = king_object.name
      return true
    else
      return false
    end
  end
end

#binding.pry
