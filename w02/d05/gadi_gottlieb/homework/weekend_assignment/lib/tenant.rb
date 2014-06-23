class Tenant

  attr_reader(:name, :age, :gender, :apartment)

  def initialize(name, age, gender)
    @name = name
    @age = age
    @gender = gender
    @apartment = apartment
  end

  def list_info
    tenant_information = "Name: #{name},"
    tenant_information += "Age: #{age},"
    tenant_information += "Gender: #{gender}."
  end

end
