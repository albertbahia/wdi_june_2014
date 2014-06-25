class Car

  attr_reader :horsepower, :fuel

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

  def rev()
    "Vroom vroom!"
  end

  def drive()
    if fuel > 0
      @fuel -= 1
      true
    else
      false
    end
  end

end
