require_relative('./human.rb') 

class Peasant < Human

attr_reader(:farm)

    def initialize(name, farm)
        super(name, nil, 1)
        @farm = farm
        @hp = 5
    end
    
    def introduce  
        super + ", and I am but a humble peasant of #{farm}"
    end
  
end


