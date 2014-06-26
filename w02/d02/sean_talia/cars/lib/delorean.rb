class DeLorean < Car

  attr_reader :current_year

  def initialize(horsepower, fuel)
    @horsepower = horsepower
    if fuel > 5
      @fuel = 5
    elsif fuel < 0
      @fuel = 0
    else
      @fuel = fuel
    end
    @current_year = 2014
  end

  def time_travel(year)
    @current_year = year
  end

end
