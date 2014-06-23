class SuperProgram < Program
  attr_reader :title

  def initialize(name, primary_function, title)
    super(name, 1024)
    @primary_function = primary_function
    @title = title
    @attack = 300
  end

  def self_derezz
    super
    @title = nil
  end

  def derezz(program)
    if program.is_a?(MinorProgram)
      program.self_derezz
    end
    program.is_a?(MinorProgram)
  end

  def fight_enforcer(enforcer)
    if enforcer.is_a?(Enforcer) && enforcer.file_size != nil
      enforcer.take_damage(attack)
    end
  end

  def describe_function
    super + " I am called #{title}."
  end

  def restore_program(program, name, function)
    if program.is_a?(MinorProgram)
      MinorProgram.new(name, function)
    end
  end



end
