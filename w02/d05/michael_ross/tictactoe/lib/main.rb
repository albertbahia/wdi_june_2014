require_relative 'board_class.rb'

# TIC TAC TOE Main Interface

puts("TIC TAC TOE")
puts("==============")
board = Board.new

loop do

puts("Player X: Please select X coordinate (1 - 3)")
coordinatex1 = gets.chomp
puts("Player X: Please select Y coordinate (1 - 3)")
coordinatex2 = gets.chomp

board.change_board_x(coordinatex1, coordinatex2)
check_to_win_x

puts("Player O: Please select X coordinate (1 - 3)")
coordinateo2 = gets.chomp
puts("Player O: Please select Y coordinate (1 - 3)")
coordinateo2 = gets.chomp

board.change_board_o(coordinateo1, cooordinateo2)
check_to_win_o

end
