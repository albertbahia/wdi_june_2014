
class Pet

  #   * name - string
  #   * owner - string, owner's name
  #   * age - number
  #   * foods_eaten - initialized to empty array
  #   * love_owner() - return a string proclaiming love towards owner
  #   * eat(food) - push 'food' into the foods_eaten array
  #   * list_foods() - return a string containing all the eaten foods

  attr_reader(:name, :age, :owner)

  def initialize(name, age, owner)
    @name = name
    @age = age
    @owner = owner
    @foods_eaten = []
  end


  def love_owner()
    puts "I love you, #{owner}!"
  end

  def eat(food)
    @foods_eaten.push(food)
  end

  def list_foods()
    return @foods_eaten.join(", ")
  end

end
