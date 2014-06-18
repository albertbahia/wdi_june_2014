

class Pet
  #method that returns each of the variable
  attr_reader(:name, :owner, :age)


  def initialize(name, owner, age)
    @name = name
    @owner = owner
    @age = age
    @foods_eaten = []
  end

  def love_owner()
    return "I love #{owner}!!!"
  end

  def eat(food)
    @foods_eaten.push(food)
  end

  def list_foods
    puts @foods_eaten.join(' and ')
  end
end
