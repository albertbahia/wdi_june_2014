class Cat < Pet

  attr_reader(:hours_slept)

  def initialize(name, age, owner)
    @name = name
    @age = age
    @owner = owner
    @foods_eaten = []
    @hours_slept = 0
  end

  def sleep()
    @hours_slept = hours_slept + 1
    #or @hours_slept +=  1
  end

  def judge_person(person_name)
    return "#{person_name} is a silly hoomin."
  end

end

# from Instructions doc ped.md:
# * Cat
#   * hours_slept - initialized to 0
#   * sleep() - increments hours_slept by 1
#   * judge_person(person) - Accepts a string 'person' and returns a judgmental string about that person
