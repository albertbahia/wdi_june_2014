require_relative 'lib/cell.rb'
require_relative 'lib/board.rb'

def header
  system('clear')
  puts '-----------------'
  puts '   Tic Tac Toe   '
  puts '-----------------'
end

def main_menu
  puts '1. New Game      '
  puts '0. Exit          '
  print '> '
end

def game_menu(board)
  header
  board.display
end

def winner_message(player)
  puts "Player #{player} wins!"
  puts "Press any key to continue..."
end

def draw_message
  puts "It's a draw!"
  puts "Press any key to continue..."
end

loop do
  header
  main_menu
  user_input = gets.chomp

  case user_input
  when '1'
    board = Board.new
    current_player = 1
    loop do
      game_menu(board)
      puts "Player #{current_player}"
      loop do
        print 'Row: '
        row = gets.chomp.to_i
        print 'Col: '
        col = gets.chomp.to_i
        if board.play(row, col, current_player)
          break
        end
      end
      current_player = 3 - current_player

      # Check Winner
      winner = board.winner
      if winner > 0
        game_menu(board)
        winner_message(winner)
        gets
        break
      end

      # Check Draw
      if board.filled?
        game_menu(board)
        draw_message
        gets
        break
      end
    end
  when '0'
    system('clear')
    exit
  end
end
