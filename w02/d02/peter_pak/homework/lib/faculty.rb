require_relative 'humans.rb'

class Faculty < Humans

  def initialize(name, role, catchphrase)
    super(name, role, catchphrase)
  end

  def give_detention(student)
    student.receive_detentions
    return student.detentions
  end

  def lower_grade(student)
    student.grade(-1)
  end

end
