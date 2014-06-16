require 'pry'
class Nurse

  attr_reader(:name, :age, :town)

  def initialize(name,age,town)
    @name = name
    @age = age
    @town = town
  end

  def list_info
    list = {
      :name => @name,
      :age => @age,
      :town => @town
    }
    list.each do |key,value|
        puts "#{key}: #{value}"
    end
  end

  def heal_pokemon()
  end

end

Joe = Nurse.new("Joe",15,"NY")

binding.pry
