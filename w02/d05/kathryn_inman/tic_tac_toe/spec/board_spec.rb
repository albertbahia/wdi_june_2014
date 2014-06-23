require_relative '../board.rb'

describe Board do
  let (:tictactoe) {Board.new('empty', 'empty', 'empty', 'empty', 'empty', 'empty', 'empty', 'empty', 'empty')}
  it "should contain a set of values" do
    expect(tictactoe.space3_3).to include('empty')
  end

  it "should return spaces by their id" do
    expect(tictactoe.space1_1).to(eq('empty'))
  end

  


end
