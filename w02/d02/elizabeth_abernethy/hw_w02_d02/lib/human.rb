class Human

  attr_reader(:name, :age, :nicknames, :arsenal)

  def initialize(name, age)
    @name = name
    @age = age
    @nicknames = []
    @arsenal = []
  end

  def stock_up(weapon)
    @arsenal.push(weapon)
  end

  def view_arsenal()
    return @arsenal.join(', ')
  end

  def add_nicknames()
    return @nicknames.join(', ')
  end

  def warn(person)
    return "You better watch your back, #{person}!"
  end

  def fight(person)
    return "Be careful #{name}... You don't want to cause trouble."
  end

end
