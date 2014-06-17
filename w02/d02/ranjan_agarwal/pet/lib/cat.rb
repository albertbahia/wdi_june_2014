class Cat < Pet
  attr_reader(:hours_slept )
  def initialize(name, owner, age)
    @name  = name
    @owner = owner
    @age   = age
    @food_eaten = []
    @hours_slept = 0
  end
  def judge_people(person_name)
    return "#{person_name} is so silly"
  end
  def sleep
      @hours_slept += 1
  end
end
