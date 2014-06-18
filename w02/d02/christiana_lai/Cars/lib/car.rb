class Car

attr_reader(:horsepower, :fuel)

  def initialize (horsepower, fuel)
    @horsepower = horsepower
    if fuel > 5
      @fuel = fuel
    elsif fuel < 0
      @fuel = 0
    else
      @fuel = fuel
    end
  end

  def rev
    return "VROOM!"
  end

  def drive
    if @fuel > 0
      @fuel -= 1
      return true
    else
      return false
    end
  end
end
