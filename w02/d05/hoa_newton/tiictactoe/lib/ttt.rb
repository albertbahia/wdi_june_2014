require 'pry'
class Ttt
	attr_reader(:row_number, :column_number, :letter, :board, :count)
	def initialize#(row_number, column_number, letter)
		@board = board
		@row_number = row_number
		@column_number = column_number
		@board = [[],[],[]]
		@letter = letter
		@count = 0
	end
	loop do

		def move(row_number, column_number, letter)
			
			if row_number < 3 && row_number >= 0
				row_number
			else 
				return "error"
			end

			if column_number < 3 && column_number >= 0
				column_number
			else
				return "error"
			end

			if @board[row_number][column_number] 
				return "Space taken"
			else
				@count += 1
				@board[row_number][column_number] = letter
			end

			if 
				board[0][0] == board[0][1] && board[0][1] == board[0][2] ||
			  	board[1][0] == board[1][1] && board[1][1] == board[1][2] ||
			  	board[2][0] == board[2][1] && board[2][1] == board[2][2] ||
				board[0][1] == board[1][1] && board[1][1] == board[2][1] ||
			  	board[0][2] == board[1][2] && board[1][2] == board[2][2] ||
			  	board[0][0] == board[1][1] && board[1][1] == board[2][2] ||
				board[2][0] == board[1][1] && board[1][1] == board[0][2] ||
				board[0][0] == board[1][0] && board[1][0] == board[2][0] 
				return "#{letter} won the game!"
			elsif @count == 9
				return "#{letter} won the game!"
			else
				puts "next move please"
			end

		end
		break

	end	
end

binding.pry

