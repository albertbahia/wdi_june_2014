class Delorean < Car #class name = class you want to inherit from
  attr_reader(:current_year)

  def initialize(horsepower, fuel, current_year)
    @horsepower = horsepower
    if fuel > 5
      @fuel = fuel
    elsif fuel < 0
      @fuel = 0
    else
      @fuel = fuel
    end
    @current_year = current_year
  end

  def time_travel(travel_year)
    if travel_year > 0
      @current_year = travel_year
    end
  end
end
