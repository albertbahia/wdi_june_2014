require_relative("character.rb")

class Cohle < Character

  attr_reader(:smoker)

  def initialize(name, nick_name, occupation)
    super(name, nick_name, occupation)
    @smoker = true
  end

  def quits_police_force
    @occupation = "Civilian"
  end

  def philosophize
    return "It's all one ghetto, man. A giant gutter in outer space"
  end

end
