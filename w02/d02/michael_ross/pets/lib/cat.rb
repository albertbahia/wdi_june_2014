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

  def judge_person(person)
    "#{person}, you are such an idiot!"
  end


end
