require_relative 'humans.rb'

class Faculty < Humans

  def initialize(name, role, catchphrase)
    super(name, role, catchphrase)
  end

  def give_detention(student)
    return student.receive_detentions
  end

  def lower_grade(student)
    return student.change_grade(-1)
  end

  def raise_grade(student)
    return student.change_grade(1)
  end

end
