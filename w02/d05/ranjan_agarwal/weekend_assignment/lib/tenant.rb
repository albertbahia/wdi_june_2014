class Tenant
  attr_reader(:name,:age,:gender, :apartment)
  def initialize(name,age,gender)
    @name = name
    @age = age
    @gender = gender
    @apartment = nil
  end

  def list_info
    return "The tenants name is: #{name}, they are #{age} years old. Their gender is #{gender}"
  end
end
