class Program
  attr_reader :name, :file_size, :primary_function, :attack

  def initialize(name, file_size)
    @name = name
    @file_size = file_size
    @primary_function = 'run_sub_programs()'
    @attack = 9000
  end

  def derezz(program)
    program.self_derezz
  end

  def self_derezz
    @name = nil
    @file_size = nil
    @primary_function = nil
    @attack = nil
  end

  def describe_function
    if file_size != nil
      "I am #{name}. My function is to #{primary_function}."
    else
      "DEREZZED..."
    end
  end

end
