require_relative '../lib/board_class.rb'
#
# describe '#win_lose_draw' do
#   it 'checks for winner or loser of game after 5 turns taken' do
#     player1_position = [0,1,2]
#     expect(win_lose_draw(player1_position)).to(include("012"))
#   end
#
#   it 'checks for winner or loser of game after 7 turns taken' do
#     player1_position = [2,4,5,8]
#     expect(win_lose_draw(player1_position)).to(include("258"))
#   end
#
#   it 'checks for winner or loser of game after 9 turns taken' do
#     player1_position = [2,4,5,7,8]
#     expect(win_lose_draw(player1_position)).to(include("258"))
#   end
#   it 'checks for winner or loser of game after 3 turns take testing if arrays
#   is backwards' do
#     player1_position = [6,3,0]
#     expect(win_lose_draw(player1_position)).to(include("036"))
#   end
#
#   it 'checks for winner or loser of game after 7 turns taken testing random
#   order' do
#     player1_position = [1,7,4,3]
#     expect(win_lose_draw(player1_position)).to(include("147"))
#   end
#
#   it 'checks for winner or loser of game after 9 turns taken testing multiple
#   random order' do
#     player1_position = [3,7,5,4,8]
#     expect(win_lose_draw(player1_position)).to(include("345"))
#   end
#
# end
#
# describe '#populate_positions' do
#   it 'modifies the positions array for the board and adds to players position
#   array' do
#   # board_positions = [0..8]
#   # user_input = 1
#
#   populate_positions(user_inpt)
#
#   expect().to(eq())
#
#   end
# end

describe '#changing_grid' do
  it 'changes winning array with x or o based on user input' do
    winning_combo = [[0,1,2], [3,4,5], [6,7,8], [0,3,6], [1,4,7], [0,4,8], [2,4,6], [2,5,8]]
    win_lose_draw(0,winning_combo)
    expect(winning_combo[0][0]).to eq('X')
    expect(winning_combo[3][0]).to eq('X')
    expect(winning_combo[5][0]).to eq('X')
  end
  
end
