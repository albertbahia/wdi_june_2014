require_relative('being.rb')

class Human < Being

  attr_reader(:house)

    def initialize(name, house, strength)
      super(name, strength)  #- inherits strength hp of 100 from parent but @hp 200 overwrites it so @hp for Human is 200
      @house = house
      @hp = 200
    end

    def introduce()
      return "I am #{name} of House #{house}"
    end
end
