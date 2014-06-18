class Pet
  attr_reader(:name, :owner, :age)
  def initialize(name, owner, age)
    @name  = name
    @owner = owner
    @age   = age
    @food_eaten = []
  end
  def food_ate(food)
    @food_eaten.push(food)
  end
  def list_foods()
    return @food_eaten.join(', ')

  end
  def love_owner
      "I love #{owner} SOO MUCH!!!"
  end
end
