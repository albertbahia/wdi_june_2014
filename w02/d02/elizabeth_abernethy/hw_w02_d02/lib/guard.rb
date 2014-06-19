require_relative 'human.rb'

class Guard < Human

  attr_reader(:guard_zone, :shot_count)

  def initialize(name, age, guard_zone)
    super(name, age)
    @nicknames = []
    @arsenal = []
    @guard_zone = guard_zone
    @shot_count = 0
  end

  def give_shot()
    @shot_count += 1
  end

  def inspect(prisoner)
    if prisoner == nil
      return "Keep it clean, #{prisoner}.."
    else
      @shot_count += 1
    end
  end
end
