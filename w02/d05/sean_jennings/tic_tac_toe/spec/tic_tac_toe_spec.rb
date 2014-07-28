require_relative '../lib/tic_tac_toe.rb'


describe TicTacToe do
  let(:game) {TicTacToe.new}
  it 'has a board' do
    empty_board = {
      "1" => " ",
      [nil,nil],
      [nil,nil],
      [nil,nil],
      [nil,nil],
      [nil,nil],
      [nil,nil],
      [nil,nil],
      [nil,nil],
    }
    expect(game.board).to eq(empty_board)
  end
end
