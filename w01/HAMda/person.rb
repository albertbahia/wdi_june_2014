require 'pry'

class Person

  attr_reader(:name, :age, :favorite_food)

  def initialize(initial_name, initial_age, initial_favorite_food)
      @name = initial_name
      @age = initial_age
      @favorite_food = initial_favorite_food
      @number_of_fingers = 10
  end

  def rename(new_name)
    @name = new_name
  end

  def change_age(new_age)
    if new_age >= 0
      @age = new_age
    else
      return "invalid age"
    end
  end

  def change_favorite_food(new_fav_food)
    @favorite_food = new_fav_food
  end

end
