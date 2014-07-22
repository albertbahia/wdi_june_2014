class Dog < Pet

  attr_reader(:ear_type)

  def initialize(initial_name, initial_owner, initial_age, initial_ear_type)
    super(initial_name, initial_owner, initial_age)
    @ear_type = initial_ear_type
  end

  def bark()
    "WOOOOOOOF!  WOOOOOOOF!  HOWWWLL!"
  end

  def eat(new_food)
    #super w/o parentheses works here.  
    super(new_food)
    "WOOF!"
  end


end
