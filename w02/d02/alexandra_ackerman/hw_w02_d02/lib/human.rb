require_relative "./being.rb"

class Human < Being

  attr_reader(:name, :hp, :age)

  def initialize(name, hp, age)
    super(name, hp)
    @age = age
  end

  def hp()
    if @hp < 0
      return 0
    else
      return @hp
    end
  end

  def taunt()
    return("Come and get it!")
  end

  def cry_for_help()
    return("Help! I need help!")
  end

end
