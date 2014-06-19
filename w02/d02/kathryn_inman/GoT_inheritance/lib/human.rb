require_relative './being.rb'

class Human < Being

    attr_reader(:house, :hp)
    def initialize(name, house, strength)
      super(name, strength)
      @house = house
      @hp = 200
    end

    def introduce
      "Greetings, I am #{name.capitalize}, of House #{house.capitalize}."
    end

end
