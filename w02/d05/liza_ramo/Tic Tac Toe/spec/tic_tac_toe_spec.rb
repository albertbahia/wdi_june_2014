require_relative '../lib/tic_tac_toe'

describe '#board' do

  it 'display the current board ' do
    row_1 = ["Row 1", 1, 2, 3]
    row_2 = ["Row 2", 1, 2, 3]
    row_3 = ["Row 3", 1, 2, 3]

    expect(board).to include( row_1, row_2, row_3)
  end

end



row_1[1]
