class Humans

  def initialize(name, role, catchphrase)
    @name = name
    @role = role
    @catchphrase = catchphrase
    @attendance = false
    @school = "Bayside High School"
  end

  def name
    return @name
  end

  def role
    return @role
  end

  def catchphrase
    return @catchphrase
  end

  def attendance
    return @attendance
  end

  def school
    return @school
  end

  def attend_school
    if @attendance == false
      @attendance = true
    end
  end


end
