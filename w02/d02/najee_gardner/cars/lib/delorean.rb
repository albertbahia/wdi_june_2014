require_relative 'car.rb'

class Delorean < Car
  attr :current_year

  def initialize(horsepower, fuel, current_year)
    super(horsepower, fuel)
    @current_year = current_year
  end

  def time_travel(year)
    if year > 0
      @current_year = year
    end
  end
end
