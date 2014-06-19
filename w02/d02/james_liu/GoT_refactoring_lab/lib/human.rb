require_relative '../lib/class_being.rb'

class Human < Being

attr_reader(:house)

    def initialize(name, house, strength)
    super(name, strength)
    @house = house
    @hp = 200
    end
    
    def introduce
        "My name is #{name} of House #{house}"
    end
    
end
