class Board


  attr_reader(:a, :b, :c, :d, :e, :f, :g, :h, :i)
  def initialize()
    @a = nil
    @b = nil
    @c = nil
    @d = nil
    @e = nil
    @f = nil
    @g = nil
    @h = nil
    @i = nil
  end

  def change_board_x(x, y)
    if x == "1" && y == "1"
      @a = "X"
    elsif x == "1" && y == "2"
      @b = "X"
    elsif x == "1" && y == "3"
      @c = "X"
    elsif x == "2" && y == "1"
      @d = "X"
    elsif x == "2" && y == "2"
      @e = "X"
    elsif x == "2" && y == "3"
      @f = "X"
    elsif x == "3" && y == "1"
      @g = "X"
    elsif x == "3" && y == "2"
      @h = "X"
    else
      @i = "X"
    end
  end


  def change_board_o(x, y)
    if x == "1" && y == "1"
      @a = "O"
    elsif x == "1" && y == "2"
      @b = "O"
    elsif x == "1" && y == "3"
      @c = "O"
    elsif x == "2" && y == "1"
      @d = "O"
    elsif x == "2" && y == "2"
      @e = "O"
    elsif x == "2" && y == "3"
      @f = "O"
    elsif x == "3" && y == "1"
      @g = "O"
    elsif x == "3" && y == "2"
      @h = "O"
    else
      @i = "O"
    end
  end
  # def check_to_win
  #   if @a == "X" && @b == "X" && @c == "X"
  #     "You Win"
  #   elsif @d == "X" && @e == "X" && @f == "X"
  #     "You Win"
  #   elsif @g == "X" && @h == "X" && @i == "X"
  #     "You Win"
  #   elsif @a == "X" && @d == "X" && @g == "X"
  #     "You Win"
  #   elsif @b == "X" && @e == "X" && @h == "X"
  #     "You Win"
  #   elsif @c == "X" && @f == "X" && @i == "X"
  #     "You Win"
  #   elsif @a == "X" && @e == "X" && @i == "X"
  #     "You Win"
  #   elsif @g == "X" && @e == "X" && @c == "X"
  #     "You Win"
  #   else
  #     "No winner"
  #   end
  # end
  def check_to_win_x
    case
    when @a == "X" && @b == "X" && @c == "X"
      "Player X wins"
      exit
    when @d == "X" && @e == "X" && @f == "X"
      "Player X wins"
      exit
    when @g == "X" && @h == "X" && @i == "X"
      "Player X wins"
      exit
    when @a == "X" && @d == "X" && @g == "X"
      "Player X wins"
      exit
    when @b == "X" && @e == "X" && @h == "X"
      "Player X wins"
      exit
    when @c == "X" && @f == "X" && @i == "X"
      "Player X wins"
      exit
    when @a == "X" && @e == "X" && @i == "X"
      "Player X wins"
      exit
    when @g == "X" && @e == "X" && @c == "X"
      "Player X wins"
      exit
    else
      "No winner"
    end
  end

  def check_to_win_o
    case
    when @a == "O" && @b == "O" && @c == "O"
      "Player O wins"
      exit
    when @d == "O" && @e == "O" && @f == "O"
      "Player O wins"
      exit
    when @g == "O" && @h == "O" && @i == "O"
      "Player O wins"
      exit
    when @a == "O" && @d == "O" && @g == "O"
      "Player O wins"
      exit
    when @b == "O" && @e == "O" && @h == "O"
      "Player O wins"
      exit
    when @c == "O" && @f == "O" && @i == "O"
      "Player O wins"
      exit
    when @a == "O" && @e == "O" && @i == "O"
      "Player O wins"
      exit
    when @g == "O" && @e == "O" && @c == "O"
      "Player O wins"
      exit
    else
      "No winner"
    end
  end


end
