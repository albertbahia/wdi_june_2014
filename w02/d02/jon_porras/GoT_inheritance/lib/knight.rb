require_relative("human.rb")

class Knight < Human

  attr_reader(:sword, :loyalty)

  def initialize(name, house, sword)
    super(name, house, 50)
    @sword = sword
    @hp = 500
    @loyalty = nil
  end


  def pledge_loyalty(nobelman)
    if nobelman.instance_of?(King)
      return true
      @loyalty = nobleman
    else
      return false
    end
  end

  def king_name
      return "#{loyalty.name}"
  end


end
