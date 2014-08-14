require_relative 'tic_tac_toe.rb'

describe '#tic_tac_toe' do 
	let(:board) { {row_1=> [ 'x', nil, 'o'],
		row_2=> [ 'x', nil, 'o'],
		row_3=> [ 'x', nil, 'o']}
		}


	it 'board' do 
		expect(board[:row_1]).to eq([ nil, nil, 'o'])
	end 

	it 'should have a second row' do
		expect(row).to eq([])
	end
end 