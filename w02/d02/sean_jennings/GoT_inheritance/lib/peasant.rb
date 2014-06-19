class Peasant < Human

  attr_reader(:name, :farm)

    def initialize(name,farm)
      @name = name
      @farm = farm
      @house = nil
      @strength = 1
      @hp = 5

    end

    def introduce
      "I'm humble peasant, #{name}, from #{farm}"
    end

end
