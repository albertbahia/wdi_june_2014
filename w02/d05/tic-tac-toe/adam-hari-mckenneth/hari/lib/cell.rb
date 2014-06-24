class Cell
  def initialize
    @player = 0
  end

  def player
    @player
  end

  def fill(arg_player)
    @player = arg_player if valid?(arg_player)
  end

  def valid?(arg_player)
    arg_player.between?(1, 2)
  end

  def filled?
    valid?(player)
  end

  def clear
    @player = 0
  end

  def display
    return 'X' if player == 1
    return 'O' if player == 2
    return ' '
  end
end
