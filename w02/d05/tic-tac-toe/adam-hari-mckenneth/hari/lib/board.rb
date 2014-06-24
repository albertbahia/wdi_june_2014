require_relative 'cell.rb'

class Board
  def initialize
    @board = [];
    for row in 0..2
      @board.push []
      for col in 0..2
        @board[row].push(Cell.new)
      end
    end
  end

  def player(row, col)
    cell(row, col).player
  end

  def set(row, col, player)
    cell(row, col).fill(player)
  end

  def clear(row, col)
    cell(row, col).clear
  end

  def clear_board
    for row in 1..3
      for col in 1..3
        clear(row, col)
      end
    end
  end

  def play(row, col, player)
    if row < 1 || col < 1 || row > 3 || col > 3
      return false
    end
    if cell(row, col).filled?
      return false
    end

    set(row, col, player)
    return true

  end

  def winner
    # check rows
    for row in 1..3
      cells = [cell(row, 1), cell(row, 2), cell(row, 3)]
      if winning_combo?(cells)
        return cells.first.player
      end
    end

    # check cols
    for col in 1..3
      cells = [cell(1, col), cell(2, col), cell(3, col)]
      if winning_combo?(cells)
        return cells.first.player
      end
    end

    # check diags
    cells = [cell(1, 1), cell(2, 2), cell(3, 3)]
    if winning_combo?(cells)
      return cells.first.player
    end

    cells = [cell(1, 3), cell(2, 2), cell(3, 1)]
    if winning_combo?(cells)
      return cells.first.player
    end

    return 0
  end

  def filled?
    for row in 1..3
      for col in 1..3
        return false if !cell(row, col).filled?
      end
    end
    return true
  end

  def display
    for row in 1..3
      for col in 1..3
        cell_display = " #{cell(row, col).display}"
        cell_display += " |" if col < 3
        print cell_display
      end
      print "\n____________\n" if row < 3
    end
    print "\n\n"
  end

  private
  def cell(row, col)
    @board[row-1][col-1]
  end

  def winning_combo?(cells)
    if cells.map {|c| c.player}.uniq.length == 1 && cells.first.filled?
      return true
    end
  end
end
