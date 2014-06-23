require_relative '../lib/Bird.rb'

class Penguin < Bird

  attr_reader(:eye_color)

  def initialize(name, age, location, speed, eye_color)
    super(name, age, location, speed)
    @eye_color = eye_color
  end

  def swim
    return 'Im swimming!'
  end

  def fight
    return 'Ill kill you!'
  end

end
