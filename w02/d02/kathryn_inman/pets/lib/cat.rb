class Cat < Pet

  attr_reader(:name, :owner, :age, :hours_slept)
    def initialize(name, owner, age)
      @name = name
      @owner = owner
      @age = age
      @foods_eaten = []
      @hours_slept = 0
    end

    def sleep
      @hours_slept += 1
    end

    def judge_person(person_name)
      "#{person_name.capitalize} is a dumb hoomin."
    end

  end
