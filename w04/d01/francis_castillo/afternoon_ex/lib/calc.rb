require 'pry'
class Calc

  def initialize()
    @one = 1
    @plus = :+
    @two = 2


  end


  def one
    self
  end

  def plus
    self
  end

  def two
    self
    eval("#{@one} #{@plus} #{@two}")
  end


end

binding.pry
