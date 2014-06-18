require_relative 'human.rb'

class King < Human

  attr_reader :realm

  def initialize(name, house, realm)
    super(name, house, 200)
    @realm = realm
    @hp = 1000
  end


  def introduce
    introduction = "Hello. My name is #{name} of house #{house} from the #{realm}."
    introduction += "I am a noble king."
  end

end
