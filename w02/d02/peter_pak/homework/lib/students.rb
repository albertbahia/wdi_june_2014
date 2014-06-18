require_relative 'humans.rb'

class Students < Humans

  def initialize(name, catchphrase)
    super(name, "Student", catchphrase)
    @grading_system = ["A", "B", "C", "D", "F"]
    @hw = 0
    @classes_cut = 0
    @detentions = 0
  end

  def grade
    @grading_system.at(0)
  end

  def change_grade(value)
    @grading_system.at(0 + value)
  end


  def hw
    return @hw
  end

  def classes_cut
    return @classes_cut
  end

  def detentions
    return @detentions
  end

  def complete_hw
    if @hw == 5
      @hw = 1
    else
      @hw += 1
    end
    return @hw
  end

  def cut_class
    if @classes_cut == 3
      @classes_cut = 1
    else
      @classes_cut += 1
    end
  end

  def receive_detentions
    if @detentions == 3
      @detentions = 1
    else
      @detentions += 1
    end
      return @detentions
  end

end
