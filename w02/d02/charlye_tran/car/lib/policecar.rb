class PoliceCar < Car
  attr_reader(:arsenal)

  def initialize(horsepower, fuel)


    @horsepower = horsepower
    if fuel >5
      @fuel = 5
    elsif fuel <0
      @fuel = 0
    else
      @fuel = fuel
    end

    @arsenal = []
  end

  def add_to_arsenal(weapon_to_add)
    @arsenal.push(weapon_to_add)
  end

end
