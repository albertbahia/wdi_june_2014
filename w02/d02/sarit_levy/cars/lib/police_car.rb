class PoliceCar < Car

#we do not need to include the attr_reader up here because PoliceCar reads the Car class attr_reader method
  def initialize(horsepower, fuel)
    @horsepower = horsepower
    if fuel > 5
      @fuel = 5
    elsif fuel < 0
      @fuel = 0
    else
      @fuel = fuel
    end
  end
    @arsenal = []
  end

  def add_to_arsenal(weapon)
    @arsenal.push(weapon)
  end

end
