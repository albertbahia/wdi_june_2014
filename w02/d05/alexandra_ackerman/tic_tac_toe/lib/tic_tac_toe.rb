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

#THE GRAVEYEARD

  # def x_prompt(r,c)
  #   puts("Please type a row number, 1-3.")
  #   r = gets().chomp().to_i
  #   puts("Please type a column number, 1-3.")
  #   c = gets().chomp().to_i
  #   @board[r - 1][c - 1] = "X"
  # end
# o_row_input = gets().chomp().to_i
#
# o_column_input = gets().chomp().to_i
#
#   if [x_row_input][x_column_input] == "X" || "O"
#     puts "Invalid move, you lose a turn. LAME!"
#   else
#     board[x_row_input][x-column_input] = "X"
#   end
#
#
# board[o_row_input][o_column_input] = "O"

# def replace_value (row, column, player)
#   @board[row - 1][column - 1] == 0 || 1 || 2
#     @board[row - 1][column - 1] = player
#     return @board
#   # elsif
#   #   @board[row - 1][column - 1] == "X" || "O"
#   #   return ("You messed up. You loses a turn.")
#   # end
# end
