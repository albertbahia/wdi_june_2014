require_relative '02_tic_tac_toe.rb'

describe '#player_move(player_array)' do

  it 'it puts move into array' do
    expects(player_array).to include(player_input)
  end

end
