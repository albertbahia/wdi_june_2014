class TicTacToe

    attr_reader(:board, :win_lines, :player_turn)

    def initialize
      @board = [nil, nil, nil, nil, nil, nil, nil, nil, nil]
      @win_lines = [ [0,1,2], [3,4,5], [6,7,8], [0,3,6], [1,4,7], [2,5,8], [0,4,8], [2,4,6] ]
      @player_turn = :player1
    end

    def fill_spot(spot)
      if spot.is_a?(Fixnum)
        if spot > 8 || spot < 0
          nil
        else
          board[spot] = player_turn == :player1 ? "x" : "o"
          @player_turn = player_turn == :player1 ? :player2 : :player1
        end
      else
        nil
      end
    end

    def winner?
      line = []

      win_lines.each do |arr_index|

        arr_index.each do |index|
          line.push(board[index])
        end

        winner = line.reject {|move| move == nil}.join

        if winner == "xxx" || winner == "ooo"
          return true
        else
          return false
        end
      end
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
