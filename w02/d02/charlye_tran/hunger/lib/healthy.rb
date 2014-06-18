require_relative '../lib/hungry_person.rb'
class Healthy < HungryPerson

  attr_reader(:bmi)


  def initialize(name, occupation, hometown, bmi)
    super(name, occupation, hometown)
    @calories = 2000
    @bmi = bmi
  end

  def exercise(min)
    @calories = (min * 100) + calories
    if @calories > 5000
      @calories = 5000
    end
    return calories
  end


end
