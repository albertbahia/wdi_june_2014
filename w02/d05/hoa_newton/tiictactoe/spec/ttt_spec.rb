require_relative '../lib/ttt.rb'

describe initialize do
	game = Ttt.new
	it 'have a board' do
		expect(game.board).to eq([[],[],[]])
	end

	it 'board has to be empty' do
		expect(game.board[1][0]).to eq(nil)
	end

end

describe '#move' do
	game = Ttt.new
	it 'board should not have more than 3 rows' do
		expect(game.move(5,5,"x")).to eq('error')
	end

	it 'board should not have more than 3 columns' do
		expect(game.move(2,5,"x")).to eq("error")
	end

	
	it 'should return letter when we we run put' do
		expect(game.move(0,0,"o")).to eq('o')
	end

	it 'should return space taken if cell is taken' do
		game.move(0,0,"o")
		expect(game.move(0, 0, 'x')).to eq('Space taken')
	end

	it 'should put letter' do
		expect(game.move(0, 2, 'x')).to eq('x')
	end
end

describe '#winner' do
	game = Ttt.new
	it "other cells should be nil when entering x, x, x on the first row" do
		game.board[0][0] = 'x'
		game.board[0][1] = 'x'
		game.board[0][2] = 'x'
		expect(game.board[0][0]).to eq('x')
	end
	#expect(game.winner).to eq("X won the game!")
	it "should declare a winner when x, x, x" do
		game.board[0][0] = 'x'
		game.board[1][0] = 'x'
		game.board[2][0] = 'x'
		expect(game.winner).to eq("X won the game!")
	end

	it "should declare a winner when x, x, x" do
		game.board[1][0] = 'x'
		game.board[1][1] = 'x'
		game.board[1][2] = 'x'
		expect(game.winner).to eq("X won the game!")
	end

	it "should declare a winner when x, x, x" do
		game.board[2][0] = 'x'
		game.board[2][1] = 'x'
		game.board[2][2] = 'x'
		expect(game.winner).to eq("X won the game!")
	end
	
end





