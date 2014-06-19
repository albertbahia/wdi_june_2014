require_relative 'car.rb'

class PoliceCar < Car
  attr_reader :arsenal

  def initialize(horsepower, fuel)
    super(horsepower, fuel)
    @arsenal = []
  end

  def add_to_arsenal(weapon)
    arsenal.push(weapon)
  end
end
