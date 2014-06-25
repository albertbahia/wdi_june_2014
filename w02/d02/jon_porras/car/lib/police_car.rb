class Police < Car

  def initialize(horsepower, fuel)
    @horsepower
    if fuel > 5
      @fuel = 5
    elsif fuel < 0
      @fuel = 0
    else
      @fuel = fuel
    end
    @arsenal = []
  end

  def add_to_arsenal(weapon)
    @arsenal.push(weapon)
  end

end