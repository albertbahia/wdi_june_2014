require_relative './human.rb'

class King < Human

  attr_reader :realm

  def initialize(name, house, realm)
    super(name, house, 200)
    @realm = realm
    @hp = 1000
  end

  def introduce()
    return_string = "Introducing the most noble king #{name} in all of "
    return_string += "Westeros, from the #{house} house and #{realm} realm!!"
  end

end
