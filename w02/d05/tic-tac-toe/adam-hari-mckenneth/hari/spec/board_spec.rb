require_relative '../lib/board.rb'

describe Board do
  let(:board) { Board.new }
  it 'starts with an empty board' do
    for row in 1..3
      for col in 1..3
        expect(board.player(row, col)).to eq(0)
      end
    end
  end

  describe '#set' do
    it 'sets the cell to the specified player' do
      board.set(2, 1, 1)
      expect(board.player(2, 1)).to eq(1)
    end
  end

  describe '#clear' do
    it 'clears the specified cell' do
      board.set(3, 2, 2)
      board.clear(3, 2)
      expect(board.player(3, 2)).to eq(0)
    end
  end

  describe '#clear_board' do
    it 'clears the entire board' do
      board.set(1, 1, 1)
      board.set(2, 2, 2)
      board.set(1, 3, 1)
      board.set(1, 2, 2)
      board.set(2, 3, 1)
      board.set(3, 2, 2)
      board.clear_board
      for row in 1..3
        for col in 1..3
          expect(board.player(row, col)).to eq(0)
        end
      end
    end
  end

  describe '#play' do
    it 'sets the cell to the specified player if legal move' do
      board.play(2, 1, 1)
      expect(board.player(2, 1)).to eq(1)
    end

    it 'returns true for legal moves' do
      expect(board.play(2, 3, 2)).to eq(true)
    end

    it 'does nothing for illegal moves' do
      board.play(2, 2, 1)
      board.play(2, 2, 2)
      expect(board.player(2, 2)).to eq(1)
    end

    it 'returns false for illegal moves' do
      board.play(3, 2, 2)
      expect(board.play(3, 2, 1)).to eq(false)
    end
  end

  describe '#winner' do
    it 'returns 0 when nobody has won' do
      board.set(1, 1, 1)
      board.set(2, 1, 2)
      board.set(3, 3, 1)
      board.set(2, 2, 2)
      expect(board.winner).to eq(0)
    end

    it 'returns player number of winner when a row is filled' do
      board.set(1, 1, 1)
      board.set(2, 1, 2)
      board.set(1, 2, 1)
      board.set(3, 3, 2)
      board.set(1, 3, 1)
      expect(board.winner).to eq(1)
    end

    it 'returns player number of winner when a column is filled' do
      board.set(1, 1, 1)
      board.set(2, 2, 2)
      board.set(1, 3, 1)
      board.set(1, 2, 2)
      board.set(2, 3, 1)
      board.set(3, 2, 2)
      expect(board.winner).to eq(2)
    end

    it 'returns player number of winner when a diagonal is filled' do
      board.set(3, 1, 1)
      board.set(2, 1, 2)
      board.set(2, 2, 1)
      board.set(3, 3, 2)
      board.set(1, 3, 1)
      expect(board.winner).to eq(1)
    end
  end

  describe '#filled?' do
    it 'returns false if there are remaining squares' do
      board.set(3, 1, 1)
      board.set(2, 1, 2)
      board.set(2, 2, 1)
      board.set(3, 3, 2)
      board.set(1, 3, 1)
      expect(board.filled?).to eq(false)
    end

    it 'returns true if there are no remaining squares' do
      board.set(1, 1, 1)
      board.set(1, 2, 2)
      board.set(1, 3, 1)
      board.set(2, 3, 2)
      board.set(2, 1, 1)
      board.set(2, 2, 2)
      board.set(3, 3, 1)
      board.set(3, 1, 2)
      board.set(3, 2, 1)
      expect(board.filled?).to eq(true)
    end
  end
end
