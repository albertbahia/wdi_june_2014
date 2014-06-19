class Dog < Pet

  attr_reader(:ear_type)
    def initialize(initial_name, initial_owner, initial_age, initial_ear_type)
      super(initial_name, initial_owner, initial_age)
      @ear_type = initial_ear_type
    end

    def bark
      "arf arf arf"
    end

    def eat(a_food)
      super(a_food)
      return "arf nom"
    end

  end
