class Pets

  attr_reader(:name, :age, :owner)

  def initialize(name, age, owner)
    @name = name
    @age = age
    @owner = owner
    @foods_eaten = []
  end

  def love_owner()
    return "I love #{owner}"
  end

  def eat(food)
    @foods_eaten.push(food)
  end

  def list_food()
    return @foods_eaten.join(", ")
  end

end
