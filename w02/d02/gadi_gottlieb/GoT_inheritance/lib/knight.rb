require_relative 'human.rb'

class Knight < Human

  attr_reader(:sword)

  def initialize(name, house, sword)
    super(name, house, 50)
    @sword = sword
    @hp = 500
    @loyal = nil
  end

  def pledge_loyalty(king)
    if king.class == King
      @loyal = king
      true
    else
      false
    end
  end

  def king_name
    if @loyal
      @loyal.name
    else
      nil
    end
  end


  def introduce
    introduction = "Hi my name is #{name} and I have a house in #{house}"
    introduction += " I am an honorable knight. I am loyal to #{king_name}."
  end

end
