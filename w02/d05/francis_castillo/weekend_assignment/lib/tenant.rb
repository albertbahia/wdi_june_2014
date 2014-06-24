require_relative '../lib/apartment'
require_relative '../lib/building'
class Tenant

  def initialize(name, age, gender)
    @name = name
    @age = age
    @gender = gender


  end

  def name
    @name
  end

  def age
    @age
  end

  def gender
    @gender
  end

  def list_info
    info = "Name: #{name}"
    info += "Age: #{age}"
    info += "Gender #{gender}"
    return info
  end

end
