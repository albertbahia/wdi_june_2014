require_relative './apartment.rb'

class Tenant

  attr_reader(:name, :age, :gender)

  def initialize(name, age, gender)
    @name = name
    @age = age
    @gender = gender
  end


  def apartment()

  end

  def list_info()
    info_string = "Name: #{name.capitalize}, "
    info_string += "Age: #{age}, "
    info_string += "Gender: #{gender}"
  end

end
