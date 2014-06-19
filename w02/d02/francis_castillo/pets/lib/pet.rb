class Pet
  attr_reader(:name, :owner, :age)
  def initialize(name, owner, age)
    @name = name
    @owner = owner
    @age =  age
    @food_eaten = []
  end

  def love_owner()
    return "I love #{@owner}!!"
  end

  def eat(food)
    @food_eaten.push(food)
  end

  def list_food_eaten
    #@food_eaten.each{|food| return "#{food}\n"}
    @food_eaten.join(', ')
  end

end
