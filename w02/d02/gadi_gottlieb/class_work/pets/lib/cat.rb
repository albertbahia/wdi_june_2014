class Cat < Pet

  attr_reader(:hours_slept)
  def initialize(name, age, owner)
    @name = name
    @age = age
    @owner = owner
    @foods_eaten = []
    @hours_slept = 0
  end

  def judge_person(persons_name)
    return "Boy, is #{persons_name} an ugly butthead!"
  end

  def sleep()
    @hours_slept += 1
  end
end






# * Pet
# * name - string
# * owner - string, owner's name
# * age - number
# * foods_eaten - initialized to empty array
# * love_o)wner() - return a string proclaiming love towards owner
# * eat(food) - push 'food' into the foods_eaten array
# * list_foods() - return a string containing all the eaten foods
# * Dog
# * ear_type - A string (Eg. "Floopy", "Upright", "Stubby", "Shaggy")
# * bark() - Returns a string with a bark in it (eg. "Woof woof")
# * Cat
# * hours_slept - initialized to 0
# * sleep() - increments hours_slept by 1
# * judge_person(person) - Accepts a string 'person' and returns a judgmental string about that person
