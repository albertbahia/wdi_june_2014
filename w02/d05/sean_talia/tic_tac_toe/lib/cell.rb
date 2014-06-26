require 'pry'

class Cell

  attr_reader :row, :col, :value

  def initialize(row, col)
    @row = row
    @col = col
    @value = nil
  end

  def is_empty?()
    @value == nil ? true : false
  end

  def fill_in(char)
    is_empty?() ? @value = char : "Error: cell already filled"
  end

end

#binding.pry
