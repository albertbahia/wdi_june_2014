require_relative '../lib/tic_tac_toe.rb'

describe TicTacToe do
  let(:board) do
    (TicTacToe.new([0, "X", 2, 3, 4, 5, 6, 7, 8]))
  end

  describe '#replace_value' do

    it 'places player value in the board if square empty' do
      expect(board.replace_value(2, "X")).to eq([0, "X", "X", 3, 4, 5, 6, 7, 8])
    end

    it 'displays warning if user enters an invalid response' do
      expect(board.replace_value(9, "X")).to eq("You made a mistake.")
    end

    # it 'doesnt put a value if value already exists' do
    #   expect(board.replace_value(1, "X")).to eq("You messed up. You loses a turn.")
    # end
  end

end
