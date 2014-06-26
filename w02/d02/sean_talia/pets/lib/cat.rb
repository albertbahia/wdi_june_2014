class Cat < Pet

  attr_reader :hours_slept

  def initialize(name, owner, age)
    super(name, owner, age)
    @hours_slept = 0
  end

  def sleep()
    @hours_slept += 1
  end

  def judge_person(person)
    puts "#{person.capitalize} is SUCH a tool..."
  end

end
