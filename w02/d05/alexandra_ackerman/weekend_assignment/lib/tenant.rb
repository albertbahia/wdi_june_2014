require_relative './apartment.rb'


class Tenant

  attr_reader(:name, :age, :gender, :apartment)

  def initialize(name, age, gender)
    @name = name
    @age = age
    @gender = gender
    @apartment = nil
  end

  def list_info()
    info_string = "Name: #{name}, "
    info_string += "Age: #{age}, "
    info_string += "Gender: #{gender}"
  end

end
