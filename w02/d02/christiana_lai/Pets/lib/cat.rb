class Cat < Pet

  attr_reader(:hours_slept)

  def initialize (name, age, owner)
    @name = name
    @age = age
    @owner = owner
    @foods_eaten = []
    @hours_slept = 0
  end

  def judge_person(person_name)
    return "#{person_name} is a silly hoomin."
  end

  def sleep()
    @hours_slept += 1
  end
end
