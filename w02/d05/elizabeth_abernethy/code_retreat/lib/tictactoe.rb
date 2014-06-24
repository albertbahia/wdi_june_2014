class TicTacToe

  attr_reader(:board)

  def initialize (board)
    @board = board
  end

  def replace_value(choice, player)
    if (0..8).include?(choice)
      @board[choice] = player
      return @board
    else
      return ("You made a mistake.")
    end
  end

end
