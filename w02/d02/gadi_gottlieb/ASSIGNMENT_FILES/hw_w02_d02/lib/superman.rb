require_relative 'person.rb'

class Superman < Person
  attr_reader(:hp, :speed)
  def initialize(name, age, hometown, strength)
    super(name, age, hometown, strength)
    @hp = 1000000
    @speed = 50000
  end

  def fly
    return "Up Up and Away!"
  end

  def x_ray_vision
    return "I see through you."
  end

end
