require_relative '../lib/board.rb'

describe do
  let(:test_board) { Board.new() }

  it 'should have 9 cells' do
    expect(test_board.cells.length).to eq(9)
  end


  describe '#mark_cell' do
    it 'should be able to mark cell' do
      test_board.mark(1, 1)
      expect(test_board.cells[[1, 1]].is_empty?).to eq(false)
    end

    it 'should increase turn_no by 1' do
      test_board.mark(1, 1)
      expect(test_board.turns).to eq(1)
    end
  end

  describe '#whose_turn?' do
    it 'should puts "X" if it is Xs turn' do
      expect(test_board.whose_turn?).to eq('X')
    end

    it 'should puts "O" if it is Os turn' do
      test_board.
      expect(test_board.whose_turn?).to eq('X')
    end
  end

  describe '#display_status' do

    it 'should display "Game in Progress" if game is not over' do
      expect(test_board.display_status).to eq('Game in Progress')
    end

    it 'should return "Game Over" if game has ended' do
      expect()
    end

  end

  describe '#game_over?' do
    it 'should be able to tell if game is over' do
      test_board.mark(1, 1)
      test_board.mark(2, 1)
      test_board.mark(1, 2)
      test_board.mark(2, 2)
      test_board.mark(1, 3)
      expect(test_board.game_over?).to eq(true)
    end

    it 'should be able to tell if game is in progress' do
      test_board.mark(1, 1)
      test_board.mark(1, 2)
      test_board.mark(1, 3)
      expect(test_board.game_over?).to eq(false)
    end
  end


end
