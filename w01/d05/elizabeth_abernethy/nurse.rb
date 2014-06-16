# require 'pry'

class Nurse

  attr_reader(:name, :age, :town)

  def initialize(name, age, town)
    @name = name
    @age = age
    @town = town
  end

  def list_info
    info = "Name: #{name}"
    info += "Age: #{age}"
    info += "Town: #{town}"
  end

  def heal(hp)
    if hp < 0
      return (hp)
    else
    :hp = hp
  end

end
