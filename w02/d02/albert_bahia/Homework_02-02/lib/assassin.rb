

class Assassin < Avenger

  attr_reader(:clan)

  def initialize(name, clan)
    super(name, hp, strength)

    @name = name
    @clan = clan
    @hp = 70
    @strength = 150
  end

  def run()
    "I missed my target and will run away."
  end

  def stab()
    "I stab you evil bad guy."
  end

end
