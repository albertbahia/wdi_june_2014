require_relative 'person.rb'

class Batman < Person
  attr_reader(:hp, :defense, :gadgets)
  def initialize(name, age, hometown, strength)
    super(name, age, hometown, strength)
    @hp = 10000
    @defense = 1000
    @gadgets = []
  end

  def add_gadgets(item)
    gadgets.push(item)
  end

  def sixth_sense
    return "I can see what is coming a mile away."
  end
end
