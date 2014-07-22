require_relative './human.rb'

class Peasant < Human

  attr_reader(:farm_name)

  def initialize(name, farm_name)
    super(name, nil, 1)
    @farm_name = farm_name
    @house = nil
    @hp = 5
  end

  def introduce
    "Hi I am just a humble peasant named #{name} and my farm is called #{farm_name}"
  end



end
