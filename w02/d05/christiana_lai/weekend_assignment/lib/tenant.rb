class Tenant

  attr_reader(:name, :age, :gender, :apartment)

  def initialize(name, age, gender)
    @name = name
    @age = age
    @gender = gender
    @apartment = nil
  end

  def list_info
    return "Name: #{name}, Age: #{age.to_s}, Gender: #{gender}"
  end

end
