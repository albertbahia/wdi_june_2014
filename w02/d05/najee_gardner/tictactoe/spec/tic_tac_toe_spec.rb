require_relative '../lib/tic_tac_toe.rb'

describe TicTacToe do
  let(:ttt_game) { TicTacToe.new }

  it 'should have empty a board' do
    empty_board = [0, 1, 2, 3, 4, 5, 6, 7, 8]
    expect(ttt_game.board).to eq(empty_board)
  end

  it 'should have win_lines' do
    test_win_lines = [ [0,1,2], [3,4,5], [6,7,8], [0,3,6], [1,4,7], [2,5,8], [0,4,8], [2,4,6] ]
    expect(ttt_game.win_lines).to eq(test_win_lines)
  end

  it 'should have a player_turn' do
    expect(ttt_game.player_turn).to eq(:player1)
  end

  describe '#fill_spot' do
    it 'should fill a spot on the board' do
      ttt_game.fill_spot(2)
      expect(ttt_game.board).to eq([0, 1, "x", 3, 4, 5, 6, 7, 8])
    end

    it 'should return nil if wrong argument' do
      expect(ttt_game.fill_spot(9)).to eq(nil)
      expect(ttt_game.fill_spot("hello")).to eq(nil)
    end

    it 'should change player1 to player2' do
      ttt_game.fill_spot(2)
      expect(ttt_game.player_turn).to eq(:player2)
    end

    it 'should change player2 to player1' do
      ttt_game.fill_spot(5)
      ttt_game.fill_spot(2)
      expect(ttt_game.player_turn).to eq(:player1)
    end

    it 'should place an "x" on player1 turn' do
      ttt_game.fill_spot(5)
      expect(ttt_game.board).to eq([0, 1, 2, 3, 4, "x", 6, 7, 8])

    end

    it 'should place an "o" on player2 turn' do
      ttt_game.fill_spot(5)
      ttt_game.fill_spot(2)
      expect(ttt_game.board).to eq([0, 1, "o", 3, 4, "x", 6, 7, 8])
    end

    it 'should not change player_turn if wrong argument is passed' do
      ttt_game.fill_spot(9)
      expect(ttt_game.player_turn).to eq(:player1)
    end
  end

  describe '#winner?' do
    it 'should return true if player gets tic tac toe' do
      ttt_game.fill_spot(0)
      ttt_game.fill_spot(6)
      ttt_game.fill_spot(1)
      ttt_game.fill_spot(7)
      ttt_game.fill_spot(2)
      expect(ttt_game.winner?).to eq(true)
    end
  end

end
