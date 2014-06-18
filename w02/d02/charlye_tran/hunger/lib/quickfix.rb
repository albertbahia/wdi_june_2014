require_relative '../lib/hungry_person.rb'
class QuickFix < HungryPerson

  attr_reader(:fav_restaurant)


  def initialize(name, occupation, hometown, fav_restaurant)
    super(name, occupation, hometown)
    @calories = 2000
    @fav_restaurant = fav_restaurant
  end

  def visit_restaurant(calories_consumed)
    @calories = calories - calories_consumed
    if @calories < 0
      @calories = 0
    end
    return @calories
  end

  def calories_stat
    return "After visiting, #{fav_restaurant}, you have #{calories} for intake."
  end

end
