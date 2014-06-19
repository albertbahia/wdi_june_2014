require_relative 'human.rb'

class Knight < Human
  attr_reader :king_name, :sword_name

  def initialize(name, house, sword_name)
    super(name, house, 50)
    @sword_name = sword_name
    @hp = 500
  end

  def pledge_loyalty(king)
    @king_name = king.name if king.is_a?(King)
    king.is_a?(King)
  end

  def introduce
    intro = super + ". I am an honorable knight."
    intro << " I am loyal to #{king_name}." if king_name != nil
    intro
  end

end
