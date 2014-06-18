
class Cat < Pet
  attr_reader(:hours_slept)

  def initialize(name, owner, age)
    @name = name
    @owner = owner
    @age = age
    @foods_eaten = []
    @hours_slept = 0
  end

  def sleep()
    @hours_slept += 1
  end

  def judge(person)
    return "You are smelly, #{person}!!"
  end

end
