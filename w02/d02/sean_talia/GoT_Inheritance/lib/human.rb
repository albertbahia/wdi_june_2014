require_relative('./being.rb')

class Human < Being

  attr_reader :house

  def initialize(name, house, strength)
    super(name, strength)
    @house = house
    @hp = 200
  end

  def introduce()
    return_string = "Introducing to Westeros, the noble #{name}, "
    return_string += "from the house of #{house}!!"
  end

end
