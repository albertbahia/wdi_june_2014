class Pet

  attr_reader(:name, :owner, :age)

  def initialize (name, age, owner)
    @name = name
    @age = age
    @owner = owner
    @foods_eaten = []
  end

  def love_owner
    puts "I love #{owner}"
  end

  def eat(food)
    @foods_eaten.push(food)
  end

  def list_foods()
    return @foods_eaten.join(', ')
  end
end
