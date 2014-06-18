require_relative 'human.rb'

class King < Human

  attr_reader(:realm)

  def initialize(name, house, realm)
    super(name, house, 200)
    @realm = realm
    @hp = 1000
  end

  def introduce
    introduction = "Hi my name is #{name} and I have a house in #{house}"
    introduction += " in the #{realm} realm. Furthermore, I am a noble king."
  end

end
