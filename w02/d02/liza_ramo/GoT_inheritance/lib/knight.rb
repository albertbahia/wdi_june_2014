
require_relative 'human.rb'

class Knight < Human

#sword_name is the only new getter method we need:
  attr_reader(:sword_name, :loyalty)

  def initialize(name, house, sword_name)
    #calling super from human.rb; must have 3 args,
    #but already know what strength should be (50)
    super(name, house, 50)
    @sword_name = sword_name
    @hp = 500
    @loyalty = nil
  end

  def introduce
    if @loyalty
      return "My name is #{@name} of house #{@house}. I am an honerable knight pleged to #{loyalty}."
    else
      return "My name is #{@name} of house #{@house}. I am an honerable knight."
    end

  end

    def pledge_loyalty(king)
        if king.clas.name == "King"
          @loyalty = king.name
          return true
        else
          return false
        end
    end

    def king_name(king)
      if pledge_loyalty(king)
        return king.name
      else #loyalty never been pledged
        return nil
      end
    end


end

  # def introduce
  #   #first evaluate if pledged to a king
  #   #if #no king pledged to:
  #   return "My name is #{name} of house #{house} and I am an honerable knight."
  #
  #   else
  #     puts "My name is #{name} of house #{house}."
  #     puts "I am an honerable knight serving King #{king.name}."
  #end
