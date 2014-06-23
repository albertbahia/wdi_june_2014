require_relative 'human.rb'

class Peasant < Human

    attr_reader(:farm_name)

    def initialize(name, farm_name)

      super(name, nil, 1)
      @farm_name = farm_name
      @hp = 5

    end

    def introduce
      return "My name is #{name} and my farm is called #{farm_name}. I am just a humble peasant."

    end


end
