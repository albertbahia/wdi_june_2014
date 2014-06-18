
class Car
  def initialize(horsepower,fuel)
    @horsepower = horsepower

    if fuel > 5
      @fuel = 5
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
      @fuel --
      return true
    else
      return false
    end
  end
end

#* Car
#  * horsepower - a number between 1 and the limits of your imagination
#  * fuel - number between 0 and 5
#  * rev() - return the string "VROOOM!"
#  * drive() - decrement fuel by 1 and return true if fuel > 0, else return false
#* PoliceCar
#  * arsenal - array of strings representing weapons, initialized to empty array
#  * add_to_arsenal(weapon)
#* DeLorean
#  * current_time - a number representing a year
#  * time_travel(year) - change current_time to 'year' if it's positive
