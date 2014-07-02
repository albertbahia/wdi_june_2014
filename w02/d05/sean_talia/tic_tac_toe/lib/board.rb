require_relative './cell.rb'
require 'pry'

class Board

  attr_reader :cells, :turn, :player_x_moves, :player_o_moves, :winner

  def initialize()
    cell11 = Cell.new(1, 1)
    cell12 = Cell.new(1, 2)
    cell13 = Cell.new(1, 3)
    cell21 = Cell.new(2, 1)
    cell22 = Cell.new(2, 2)
    cell23 = Cell.new(2, 3)
    cell31 = Cell.new(3, 1)
    cell32 = Cell.new(3, 2)
    cell33 = Cell.new(3, 3)
    @cells = [cell11, cell12, cell13, cell21, cell22, cell23, cell31, cell32, cell33]
    @turn = 1
    @player_x_moves = []
    @player_o_moves = []
    @winning_combos = [
      [cell11, cell12, cell13],
      [cell21, cell22, cell23],
      [cell31, cell32, cell33],
      [cell11, cell21, cell31],
      [cell12, cell22, cell32],
      [cell13, cell23, cell33],
      [cell11, cell22, cell33],
      [cell13, cell22, cell31]
    ]
    @winner = nil
  end

  def whose_turn?()
    @turn % 2 == 0 ? 'X' : 'O'
  end

  def game_over?()
    if @winner == 'X' || @winner == 'O'
      true
    elsif @turn == 10
      true
    else
      false
    end
  end

  def winner()
    @winning_combos.each do |combo|
      if (combo-player_x_moves).empty?
        @winner = 'Player X'
      elsif (combo-player_o_moves).empty?
        @winner = 'Player O'
      end
    end
    @winner
  end

  def mark_cell(in_row, in_col, char)
    cells.each do |cell|
      if cell.row == in_row && cell.col == in_col
        cell.fill_in('X')
        player_x_moves.push(cell)
      end
    end
    @turn += 1
  end


end

# my_board = Board.new
# my_board.mark_cell(1, 1)
# my_board.mark_cell(1, 2)
# my_board.mark_cell(2, 1)
# my_board.mark_cell(2, 2)
# my_board.mark_cell(3, 1)
#
# binding.pry
