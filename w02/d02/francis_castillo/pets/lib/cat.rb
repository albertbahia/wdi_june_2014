class Cat < Pet

    attr_reader(:hours_slept)

    def initialize(name, owner, age)
      # @name = name
      # @owner = owner
      # @age =  age
      # @food_eaten = []
      super(name, age, owner)
      @hours_slept = 0
    end

    def sleep ()
      return @hours_slept += 1
    end

    def judge_person(person)
      return "#{person} smells"
    end

end
