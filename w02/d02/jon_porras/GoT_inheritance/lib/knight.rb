require_relative("human.rb")

class Knight < Human

  attr_reader(:sword, :loyalty)

  def initialize(name, house, sword)
    super(name, house, 50)
    @sword = sword
    @hp = 500
    @loyalty
  end


  def pledge_loyalty(nobleman)
    if nobleman.instance_of?(King)
      @loyalty = nobleman.name
      return true
    else
      return false
    end
  end

  def king_name
      return "#{loyalty}"
  end

  def introduce
     if @loyalty = loyalty
       return "I am the honorable knight #{name} of house #{house}. I am loyal to #{loyalty}"
    else
      return "I am the honorable knight #{name} of house #{house}."
    end
  end


end
