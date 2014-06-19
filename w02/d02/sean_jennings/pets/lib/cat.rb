
  class Cat < Pet

    def initialize(name,age,owner)

      @name = name
      @age = age
      @owner = owner
      @foods_eaten = []
      @hours_slept = 0
    end

    def sleep
      @hours_slept += 1
    end

    def judge_people(person)
      
    end
  end
