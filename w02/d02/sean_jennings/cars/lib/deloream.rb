
class Delorean < Car
  def initialize(horsepower,fuel,current_time)
    @horsepower = horsepower

    if fuel > 5
      @fuel = 5
    elsif fuel < 0
      @fuel = 0
    else
      @fuel = fuel
    end
    @current_time = current_time
  end

  def time_travel(year)
    if year > 0
    @current_time = year
    end
  end

end
