require_relative '../lib/board.rb'

describe Board do
  let(:new_game) {Board.new}
  it 'empty board should display' do
  empty_board = [
    [nil, nil],
    [nil, nil],
    [nil, nil],
    [nil, nil],
    [nil, nil],
    [nil, nil],
    [nil, nil],
    [nil, nil],
    [nil, nil]
  ]
  expect(new_game.game).to eq(empty_board)
  end

describe '#cell_input' do
  it 'should take user input for row and column'

  expect(cell_input()).  #not complete

  end
end
