class Cat < Pets


  def initialize(name, age, owner)
    @name = name
    @age = age
    @owner = owner
    @foods_eaten = []
    @hours_slept = 0
  end

  def judge_person(persons_name)
    return "#{persons_name} is a silly hoomin."
  end

  def sleep
    @hours_slept += 1
  end

end
