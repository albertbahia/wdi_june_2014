#Zero failures remain but needs a list_info method.

class Tenant

  attr_reader(:name, :age, :gender)

  def initialize(name, age, gender)
    @name = name
    @age = age
    @gender = gender
  end

  def apartment
  end

  def has_apartment
  end

  def list_info
    # lists the tenant
  end


end
