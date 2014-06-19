class Car
  attr_reader :horsepower, :fuel

  def initialize(horsepower, fuel)
    @horsepower = horsepower > 0 ? horsepower : 1
    if fuel > 5
      @fuel = 5
    elsif fuel < 0
      @fuel = 0
    else
      @fuel = fuel
    end
  end

  def rev
    "VROOOM!"
  end

  def drive
    @fuel = fuel - 1
  end
end
