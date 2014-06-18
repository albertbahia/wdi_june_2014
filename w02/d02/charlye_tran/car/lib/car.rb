#
# * Car
#   * horsepower - a number between 1 and the limits of your imagination
#   * fuel - number between 0 and 5
#   * rev() - return the string "VROOOM!"
#   * drive() - decrement fuel by 1 and return true if fuel > 0, else return false


class Car
  attr_reader(:horsepower, :fuel)
  def initialize (horsepower, fuel)
    @horsepower = horsepower
    if fuel >5
      @fuel = 5
    elseif fuel <0
      @fuel = 0
    else
      @fuel = fuel
    end
  end

  def rev()
    return "VROOOM!"
  end

  def drive()
    if @fuel > 0
      @fuel -= 1
      return true
    else
      return false
    end
  end
end
