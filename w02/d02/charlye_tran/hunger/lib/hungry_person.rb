class HungryPerson
  attr_reader(:name, :occupation, :hometown, :calories)

  def initialize(name, occupation, hometown)
    @name = name
    @occupation = occupation
    @hometown = hometown
    @calories = 2000
  end

  def eat(calories)
    @calories -= calories
    if @calories > 0
      return @calories
    else
      return 0
    end
  end

end
