class Dog < Pet

  attr_reader(:ear_type)

  def initialize(name, age, owner, ear_type)
    # @name = name
    # @age = age
    # @owner = owner
    # @foods_eaten = [] #foods_eaten variable is defined in Pet's initialize method but it's not being called in Dog class so we don't list it here
  #since all of the above instance variables are given in Pet class, can super list them here:
    super(name, age, owner)
    @ear_type = ear_type
  end

  #also showed different version instance variables in this class to show
  #that def initialize recognizes the parent initialize attributes by the place
  #they are located in the parameter list, so in def initialize (name, age, owner) parameter string
  #like so:
#   #
# def initialize(initial_name, initial_age, initial_owner, initial_ear_type)
#   super(initial_name, initial_age, initial_owner)
#   @ear_type = initial_ear_type
# end

  def eat(food)
    super(food) #- takes this from parent's eat(food) method
    puts("Woof")
  end

  def ear_type
  end

end

# Dog
#   * ear_type - A string (Eg. "Floopy", "Upright", "Stubby", "Shaggy")
#   * bark() - Returns a string with a bark in it (eg. "Woof woof")
