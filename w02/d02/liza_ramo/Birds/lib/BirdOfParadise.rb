require_relative '../lib/Bird.rb'

class BirdOfParadise < Bird

  attr_reader(:color)

  def initialize(name, age, location, speed, color)
    super(name, age, location, speed)
    @color = color
  end

  def fly
    return 'Im flying!'
  end

  def bathes
    return 'Im very clean!'
  end

end
