require_relative 'human.rb'

class Knight < Human

  attr_reader :sword

  def initialize(name, house, sword)
    super(name, house, 50)
    @sword = sword
    @hp = 500
    @allegiance = nil
  end

  def pledge_loyalty(king)
    if king.class == King
      @allegiance = king
      true
    else
      false
    end
  end

  def king_name
    @allegiance ? @allegiance.name : nil
  end

  def introduce
    if @allegiance
      introduction = "Hello. My name is #{name} from house #{house}."
      introduction += "I am an honorable knight."
      introduction += "I am loyal to #{@allegiance.name}."
    else
      introduction = "Hello. My name is #{name} from house #{house}."
      introduction += "I am an honorable knight."
    end
  end



end
