require 'pry'

class Nurse

  attr_reader(:name, :age, :town)

  def initialize(name, age, town)
      @name = name
      @age = age
      @town = town
  end

end

binding.pry
