class Pet

  attr_reader(:name, :owner, :age, :foods_eaten)

  def initialize(name, owner, age)
    @name = name
    @owner = owner
    @age = age
    @foods_eaten = []
  end

  def love_owner()
    return "MUCH HAPPY. SUCH LOVES. SO #{owner}!"
  end

  def eat(food)
    @foods_eaten.push(food)
  end

  def list_foods()
    return @foods_eaten.join(', ')
  end

end
