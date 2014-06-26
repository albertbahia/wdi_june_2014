class DeLorean < Car

  attr_reader(:current_year) # the horsepower and fuel attributes will be inherited from the parent Car class

  def initialize(horsepower, fuel, current_year)
    @horsepower = horsepower
    if fuel > 5
      @fuel = 5
    elsif fuel < 0
      @fuel = 0
    else
      @fuel = fuel
    end
    @current_year = current_year
  end

  def time_travel(year_to_travel)
    if year_to_travel > 0
      @current_year = year_to_travel
  end

end
