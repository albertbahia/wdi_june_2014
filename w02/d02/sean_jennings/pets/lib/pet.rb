
class Pet

  attr_reader(:name, :age, :owner)

  def initialize(name,owner,age)

    @name = name
    @owner = owner
    @age = age
    @foods_eaten = []
  end

  def love_owner
    message = "I woof woof #{owner}"
    return message
  end

  def eat(food)
    ate = @foods_eaten.push(food)
    return ate
  end

  def list_foods
    list = @foods_eaten.join(',')
    return list
  end

end
