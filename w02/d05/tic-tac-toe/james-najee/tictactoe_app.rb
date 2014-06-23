require_relative 'lib/tic_tac_toe.rb'

game = TicTacToe.new

def display_board(tictactoe)
  puts " ___ ___ ___"
  puts "| #{tictactoe.board[0]} | #{tictactoe.board[1]} | #{tictactoe.board[2]} |"
  puts " ___ ___ ___"
  puts "| #{tictactoe.board[3]} | #{tictactoe.board[4]} | #{tictactoe.board[5]} |"
  puts " ___ ___ ___"
  puts "| #{tictactoe.board[6]} | #{tictactoe.board[7]} | #{tictactoe.board[8]} |"
  puts " ___ ___ ___"
end

puts ""
puts "Welcome to Tic Tac Toe!"
puts ""

# Main Loop
while true
  while true
    if game.player_turn == :player1
      puts "PLAYER 1:"
    else
      puts "PLAYER 2:"
    end

    puts ""
    display_board(game)
    puts ""
    print "Enter number: "
    choice = gets.chomp.to_i
    puts ""

    if game.fill_spot(choice) != nil
      break
    end

    puts ""
    puts "That is an invalid choice."
    puts "Press [ENTER] to try again."
    gets
    puts ""
  end

  if game.winner?
    if game.player_turn == :player2
      puts "PLAYER 1 WINS!"
    else
      puts "PLAYER 2 WINS!"
    end

    break
  end




end
