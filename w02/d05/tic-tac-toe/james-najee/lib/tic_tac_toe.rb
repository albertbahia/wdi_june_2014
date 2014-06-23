class TicTacToe

    attr_reader(:board, :win_lines, :player_turn)

    def initialize
      @board = [0, 1, 2, 3, 4, 5, 6, 7, 8]
      @win_lines = [ [0,1,2], [3,4,5], [6,7,8], [0,3,6], [1,4,7], [2,5,8], [0,4,8], [2,4,6] ]
      @player_turn = :player1
    end

    def fill_spot(spot)
      if spot.is_a?(Fixnum)
        if spot <= 8 && spot >= 0 && !board[spot].is_a?(String)
          board[spot] = player_turn == :player1 ? "X" : "O"
          @player_turn = player_turn == :player1 ? :player2 : :player1
        end
      end
    end

    def winner?
      win_lines.each do |arr_index|
        line = []
        arr_index.each do |index|
          line << board[index]
        end

        winner = line.reject {|move| (0..8).include?(move)}.join

        if winner == "XXX" || winner == "OOO"
          return true
        end
      end

      false
    end



end

# describe '#fill_spot' do
#   it 'should fill a spot on the board'
#     ttt_game.fill_spot("x", 2)
#     expect(ttt_game.board).to eq([nil, nil, "x", nil, nil, nil, nil, nil, nil])
#   end
#
#   it 'should return nil if invalid arguments argument' do
#     expect(ttt_game.fill_spot(1, 9)).to eq(nil)
