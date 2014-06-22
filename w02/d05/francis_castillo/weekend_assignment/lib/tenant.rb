require_relative '../lib/apartment'

class Tenant < Apartment

  def initialize(name, age, gender)
    #super(:apartment)
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


end
