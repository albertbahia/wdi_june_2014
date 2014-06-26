class Tenant
  attr_reader :name, :age, :gender
  attr_accessor :apartment
  
  def initialize(name,age,gender)
    @name = name
    @age = age
    @gender = gender
    @apartment = nil
  end

  def list_info
    "My name is #{name}, I'm #{age}, and I'm a #{gender}"
  end
end
