class Cat < Pet

  attr_reader(:hours_slept)

  def initialize(name, owner, age)
    # @name = name
    # @owner = owner
    # @age = age
    # @foods_eaten = []
    super(name, owner, age)
    @hours_slept = 0
  end

  def sleep()
    @hours_slept += 1
  end

  def judge_person(persons_name)
    return "#{persons_name} is a stupid hooman."
  end

end
