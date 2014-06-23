class Tenant

  attr_reader(:name, :age, :gender, :apartment)
  def initialize(initial_name, initial_age, initial_gender)
    @name = initial_name
    @age = initial_age
    @gender = initial_gender
    @apartment = nil
  end

  def list_info
    tenant_info = "Name: #{self.name}, "
    tenant_info += "Age: #{self.age.to_s}, "
    tenant_info += "Gender: #{self.gender}"
    if @apartment == nil
      return tenant_info
    else
      tenant_info += "Apt. #{self.apartment.to_s}"
    end
  end

  def acquire_apt(apt_acquired)
    @apartment = apt_acquired
  end

end
