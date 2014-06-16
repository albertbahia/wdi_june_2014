class Nurse

    attr_reader(:name, :age, :hometown)
  def initialize(initial_name, initial_age, initial_hometown)
    @name = initial_name
    @age = initial_age
    @hometown = initial_hometown
  end

  def nurse_info()
    nurse_info_list = "#{name}, "
    nurse_info_list += "Age: #{age}, "
    nurse_info_list += "Hometown: #{hometown}"
  end

end
