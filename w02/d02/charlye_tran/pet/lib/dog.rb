
class Dog < Pet

  attr_reader(:ear_type)

  def initialize(name, owner, age, ear_type)
    super(name,age,owner)
    @ear_type = ear_type
  end

  def bark
    return "Arf Arf"
  end

  def eat(food)
    super (food)
    puts "Woof!"
  end

end
