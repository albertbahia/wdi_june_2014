class Cat < Pet

  attr_reader :hours_slept

  def initialize(name, age, owner)
    @name = name
    @owner = owner
    @age = age
    @foods_eaten = []
    @hours_slept = 0
  end

  def judge_person(persons_name)
    return "#{persons_name} is a silly hoomin."
  end

  def sleep()
    @hours_slept += 1
  end

end
