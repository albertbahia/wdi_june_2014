class Human < Being

  attr_reader :house

  def initialize(name, house, strength)
    super(name, strength)
    @house = house
    @hp = 200
  end

  def introduce
    introduction = "Hello. My name is #{name} from house #{house}."
  end

end
