require_relative('../lib/king.rb')

class Knight < Human
  attr_reader(:sword_name, :king)

  def initialize(name, house, sword_name)
    super(name, house, strength)
    @sword_name = sword_name
    @strength = 50
    @hp = 500
    @king = nil
  end

  def pledge_loyalty(king)
    if king.class == King
      @king = king
      true
    else
      false
    end

  end

  def king_name(king)
    if pledge_loyalty(king)
      king.name
    else
      nil
    end
  end


  def introduce
    if king
      super + "I am loyal to #{king.name}. I am an honorable knight."
    else
      super + "I am an honorable knight."
    end
  end

end
