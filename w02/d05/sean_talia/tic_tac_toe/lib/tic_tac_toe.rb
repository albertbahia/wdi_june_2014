require_relative './board.rb'

game_board = Board.new

def display_main_menu()
  puts "Welcome! Let's play a game of Tic-Tac-Toe.\n"
  puts "To mark a cell, just enter the row and column numbers! \n"
  puts "Player X, you go first."
end

def prompt_player(player)
  print "Player #{player}, please enter a row: "
  row_choice = gets.chomp
  print "And the column, please: "
  col_choice = gets.chomp
  return row_choice, col_choice
end

################################################################################

display_main_menu()

while game_board.turn < 10
  puts "~~~~~~ Turn #{game_board.turn}, Player #{game_board.whose_turn?} ~~~~~~"
  if !game_board.game_over?()

    row, col = game_board.turn % 2 == 0 ? prompt_player('X') : prompt_player('O')

    if game_board.whose_turn? == 'X'
      game_board.mark_cell(row, col, 'X')
    else
      game_board.mark_cell(row, col, 'O')
    end

  else
    puts "You won #{game_board.winner}, nice work!"

  end
end

if game_board.turn > 9 && game_board.winner == nil
  puts "It's a draw!"
end
