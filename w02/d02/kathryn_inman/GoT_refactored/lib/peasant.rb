 require_relative './human.rb'

 class Peasant < Human

   attr_reader(:farm_name)
   def initialize(initial_name, initial_farm_name)
     super(initial_name, nil, 1)
     @farm_name = initial_farm_name
     @hp = 5
   end

   def introduce
     "I am #{@name.capitalize}, of #{farm_name.split.map(&:capitalize).join(' ')}, and I am just a humble peasant."
   end

 end


# piers = Peasant.new('Piers', 'Piers Parsnip Farm')
