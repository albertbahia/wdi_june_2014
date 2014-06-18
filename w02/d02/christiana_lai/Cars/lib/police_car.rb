class PoliceCar < Car #class name = class you want to inherit from
  attr_reader(:arsenal)

  def initialize(horsepower, fuel)
    @horsepower = horsepower
    if fuel > 5
      @fuel = fuel
    elsif fuel < 0
      @fuel = 0
    else
      @fuel = fuel
    end
    @arsenal = []
  end

  def add_to_arsenal(weapon)
    @arsenal.push(weapon)
  end
end
