class MinorProgram < Program
  attr_reader :rogue_actions

  def initialize(name, primary_function)
    super(name, 256)
    @primary_function = primary_function
    @rogue_actions = []
    @attack = 20
  end

  def derezz(program); end

  def self_derezz
    super
    @rogue_actions = nil
  end

  def change_primary_function(password, new_function)
    if new_function != primary_function && password == 'hailthemc'
      @primary_function = new_function
    end
  end

  def run_rogue_function(rogue_function)
    if rogue_function != primary_function
      rogue_actions.push(rogue_function)
    end
  end



end
