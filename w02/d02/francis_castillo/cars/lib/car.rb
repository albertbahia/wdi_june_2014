class Car
  attr_reader(:hp, :fuel)

  def initialize(hp, fuel)
    @hp = hp
    if fuel > 5
      @fuel = 5
    elsif fuel < 0
      @fuel = 0
    else
      @fuel = fuel
    end
  end

  def rev()
    return "VROOOM!"
  end

  def drive()
    if @fuel > 0
      @fuel -= 1
      return true
    else
      return false
    end
  end
end
