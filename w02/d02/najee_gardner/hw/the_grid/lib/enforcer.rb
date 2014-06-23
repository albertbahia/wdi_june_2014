class Enforcer < Program
  attr_reader :division, :password

  def initialize(name, primary_function, division)
    super(name, 512)
    @primary_function = primary_function
    @division = division
    @password = 'hailthemc'
    @attack = 200
  end

  def derezz(program)
    program.self_derezz if program.is_a?(MinorProgram)
    program.is_a?(MinorProgram)
  end

  def self_derezz
    super
    @division = nil
    @password = nil
  end

  def describe_function
    super + " I am in the #{division} Division."
  end

  def inspect_program(program)
    if program.is_a?(MinorProgram)
      if program.rogue_actions.length < 3
        derezz(program)
        true
      else
        false
      end
    end
  end

  def reform_function_of(program, new_function)
    if program.is_a?(MinorProgram)
      program.change_primary_function(password, new_function)
      return true
    end
    false
  end

  def fight_super_program(program)
    if program.is_a?(SuperProgram)
      program.take_damage(attack)
    end

  end

end
