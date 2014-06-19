require_relative 'human.rb'

class Prisoner < Human

  attr_reader(:prison_number, :job, :commissary)

  def initialize(name, age, prison_number)
    super(name, age)
    @nicknames = []
    @arsenal = []
    @prison_number = prison_number
    @job = nil
    @commissary = 10
  end

  def get_job(job)
    @job = job
    return true
  else
    false
  end

  def spend_commissary()
    if @commissary > 0
      @commissary -= 1
      return true
    else
      return false
    end
  end

  def get_commissary()
    if @commissary > 0
      @commissary += 1
      return true
    else
      return false
    end
  end
end
