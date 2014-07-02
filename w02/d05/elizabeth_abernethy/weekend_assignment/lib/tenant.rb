require_relative 'apartment.rb'

class Tenant

  attr_reader(:name, :age, :gender, :apartment)

  def initialize(name, age, gender)
    @name = name
    @age = age
    @gender = gender
    @apartment = nil
  end

  def list_info
      info_string = "Name: #{name.capitalize}\n"
      info_string += "Age: #{age}\n"
      info_string += "Gender: #{gender}\n"
      info_string += "Apartment: #{apartment.name}\n"
  end

end
