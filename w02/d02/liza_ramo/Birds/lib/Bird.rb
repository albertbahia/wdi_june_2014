
require 'pry'

class Bird
  attr_reader(:name, :age, :location, :speed)

  def initialize(name, age, location, speed)
    @name = name
    @age = age
    @location = location
    @speed = speed
  end

  def name
    @name.capitalize
  end

  def get_food
    if speed >= 5
      return true
    else
      return false
    end

  end

end
