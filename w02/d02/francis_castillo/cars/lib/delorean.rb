class Delorean < Car

  attr_reader(:current_year)

  def initialize(hp, fuel, current_year)
    @hp = hp
    if fuel > 5
      @fuel = 5
    elsif fuel < 0
      @fuel = 0
    else
      @fuel = fuel
    end
    @current_year =  current_year
  end

  def time_travel(yr)
    if current_year > 0
      @current_year = yr
    end
  end

end
