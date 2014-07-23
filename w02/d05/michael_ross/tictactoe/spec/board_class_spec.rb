require_relative '../lib/board_class.rb'

# describe '#change_board' do
#   let(:board) { Board.new() }
#   it 'does nothing' do
#     change_board('1', '2')
#   end
  # it 'user input should result in board variable changing to a tic or a tac' do
  #   change_board('1', '1')
  #   expect board.a to eq('X')
  # end
# end
describe '#change_board_x' do
  let(:board) {Board.new()}
  it 'should return coordinates matching x and y inputs' do
    expect(board.change_board_x('1', '1')).to eq('X')
  end
end
describe '#change_board_o' do
  let(:board) {Board.new()}
  it 'should return coordinates matching x and y inputs' do
    expect(board.change_board_o('1', '1')).to eq('O')
  end
end

describe '#check_to_win_x' do
  let(:board) {Board.new()}

  it 'should check to see if game should end based on est. winning coordinates' do
    board.change_board_x('1', '1')
    board.change_board_x('1', '2')
    board.change_board_x('1', '3')
    expect(board.check_to_win_x).to eq("You Win")
  end
  it 'should not declare a winner' do
    board.change_board_x('1', '1')
    board.change_board_x('3', '2')
    board.change_board_x('1', '3')
    expect(board.check_to_win_x).to eq("No winner")
  end
end

describe '#check_to_win_o' do
  let(:board) {Board.new()}

  it 'should check to see if game should end based on est. winning coordinates' do
    board.change_board_o('1', '1')
    board.change_board_o('1', '2')
    board.change_board_o('1', '3')
    expect(board.check_to_win_o).to eq("You Win")
  end
  it 'should not declare a winner' do
    board.change_board_o('1', '1')
    board.change_board_o('3', '2')
    board.change_board_o('1', '3')
    expect(board.check_to_win_o).to eq("No winner")
  end
end
