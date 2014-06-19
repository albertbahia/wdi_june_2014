class Cat < Pet
  attr_reader :hours_slept

  def initialize(name, owner, age, hours_slept)
    super(name, owner, age)
    @hours_slept = hours_slept
  end

  def sleep
    @hours_slept += 1
  end

  def judge_person(person)
    "#{person.capitalize} is so annoying..."
  end
end
